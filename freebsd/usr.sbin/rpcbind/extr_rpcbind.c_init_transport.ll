; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcbind.c_init_transport.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcbind.c_init_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i64, i8*, i32, i8**, i8*, i8* }
%struct.t_bind = type { %struct.netbuf }
%struct.netbuf = type { i32, i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.addrinfo = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.__rpc_sockinfo = type { i32, i32, i32 }
%struct.sockaddr_un = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@NC_TPI_CLTS = common dso_local global i64 0, align 8
@NC_TPI_COTS = common dso_local global i64 0, align 8
@NC_TPI_COTS_ORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot create socket for %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot get information for %s\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@_PATH_RPCBINDSOCK = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@nhosts = common dso_local global i32 0, align 4
@hosts = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@on = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"can't set v6-only binding for ipv6 socket: %m\00", align 1
@servname = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"cannot get local address for %s: %s\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"cannot bind %s on %s: %m\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"cannot allocate memory for %s address\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"%s: could not create service\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"cannot bind %s: %m\00", align 1
@RPCBPROG = common dso_local global i32 0, align 4
@RPCBVERS = common dso_local global i8* null, align 8
@rpcb_service_3 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"could not register %s version 3\00", align 1
@RPCBVERS4 = common dso_local global i8* null, align 8
@rpcb_service_4 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"could not register %s version 4\00", align 1
@IPPROTO_ST = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@NC_INET = common dso_local global i8* null, align 8
@NC_TCP = common dso_local global i8* null, align 8
@NC_UDP = common dso_local global i8* null, align 8
@PMAPPORT = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i8* null, align 8
@debugging = common dso_local global i64 0, align 8
@list_pml = common dso_local global i8* null, align 8
@pmap_service = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@tcp_uaddr = common dso_local global i8* null, align 8
@tcptrans = common dso_local global i64* null, align 8
@udp_uaddr = common dso_local global i8* null, align 8
@udptrans = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconfig*)* @init_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_transport(%struct.netconfig* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconfig*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.t_bind, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.__rpc_sockinfo, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca [4 x i32], align 16
  %17 = alloca %struct.sockaddr_un, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  %21 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %22 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NC_TPI_CLTS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %28 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NC_TPI_COTS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %34 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NC_TPI_COTS_ORD, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %574

39:                                               ; preds = %32, %26, %1
  %40 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %41 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %47 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %45, %39
  %52 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %53 = call i32 @__rpc_nconf2fd(%struct.netconfig* %52)
  store i32 %53, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  store i32 0, i32* %19, align 4
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EAFNOSUPPORT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %19, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_DEBUG, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @LOG_ERR, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %70 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, ...) @syslog(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  store i32 1, i32* %2, align 4
  br label %574

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %76 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %75, %struct.__rpc_sockinfo* %8)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %81 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, ...) @syslog(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  store i32 1, i32* %2, align 4
  br label %574

84:                                               ; preds = %74
  %85 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %86 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %92 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90, %84
  %97 = call i32 @memset(%struct.sockaddr_un* %17, i32 0, i32 40)
  %98 = load i32, i32* @AF_LOCAL, align 4
  %99 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @_PATH_RPCBINDSOCK, align 4
  %101 = call i32 @unlink(i32 %100)
  %102 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @_PATH_RPCBINDSOCK, align 4
  %105 = call i32 @strcpy(i32 %103, i32 %104)
  %106 = call i32 @SUN_LEN(%struct.sockaddr_un* %17)
  %107 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %17, i32 0, i32 6
  store i32 %106, i32* %107, align 4
  store i32 40, i32* %12, align 4
  %108 = bitcast %struct.sockaddr_un* %17 to %struct.sockaddr*
  store %struct.sockaddr* %108, %struct.sockaddr** %15, align 8
  br label %123

109:                                              ; preds = %90
  %110 = bitcast %struct.addrinfo* %6 to %struct.sockaddr_un*
  %111 = call i32 @memset(%struct.sockaddr_un* %110, i32 0, i32 40)
  %112 = load i32, i32* @AI_PASSIVE, align 4
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 5
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %8, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %109, %96
  %124 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %125 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %435

129:                                              ; preds = %123
  %130 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %131 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %435

135:                                              ; preds = %129
  %136 = load i32, i32* @nhosts, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  %138 = load i8**, i8*** @hosts, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = call i8** @realloc(i8** %138, i32 %142)
  store i8** %143, i8*** @hosts, align 8
  %144 = load i32, i32* %13, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i8**, i8*** @hosts, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %148, align 8
  br label %172

149:                                              ; preds = %135
  %150 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 129
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i8**, i8*** @hosts, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %154, i64 %157
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %158, align 8
  br label %171

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 128
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i8**, i8*** @hosts, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %168, align 8
  br label %170

169:                                              ; preds = %159
  store i32 1, i32* %2, align 4
  br label %574

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %153
  br label %172

172:                                              ; preds = %171, %146
  store i32 0, i32* %14, align 4
  br label %173

173:                                              ; preds = %429, %366, %311, %270, %260, %232, %172
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %430

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %13, align 4
  %179 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %180 = call i32 @__rpc_nconf2fd(%struct.netconfig* %179)
  store i32 %180, i32* %4, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %176
  store i32 0, i32* %20, align 4
  %183 = load i64, i64* @errno, align 8
  %184 = load i64, i64* @EAFNOSUPPORT, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %188 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @NC_TPI_CLTS, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 1, i32* %20, align 4
  br label %193

193:                                              ; preds = %192, %186, %182
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @LOG_DEBUG, align 4
  br label %200

198:                                              ; preds = %193
  %199 = load i32, i32* @LOG_ERR, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %203 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 (i32, i8*, ...) @syslog(i32 %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %204)
  store i32 1, i32* %2, align 4
  br label %574

206:                                              ; preds = %176
  %207 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %274 [
    i32 129, label %209
    i32 128, label %237
  ]

209:                                              ; preds = %206
  %210 = load i8**, i8*** @hosts, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %216 = call i32 @inet_pton(i32 129, i8* %214, i32* %215)
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = load i32, i32* @AI_NUMERICHOST, align 4
  %220 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %219
  store i32 %222, i32* %220, align 8
  br label %236

223:                                              ; preds = %209
  %224 = load i8**, i8*** @hosts, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %230 = call i32 @inet_pton(i32 128, i8* %228, i32* %229)
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %223
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @close(i32 %233)
  br label %173

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235, %218
  br label %275

237:                                              ; preds = %206
  %238 = load i8**, i8*** @hosts, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %244 = call i32 @inet_pton(i32 128, i8* %242, i32* %243)
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %251

246:                                              ; preds = %237
  %247 = load i32, i32* @AI_NUMERICHOST, align 4
  %248 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, %247
  store i32 %250, i32* %248, align 8
  br label %264

251:                                              ; preds = %237
  %252 = load i8**, i8*** @hosts, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %258 = call i32 @inet_pton(i32 129, i8* %256, i32* %257)
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %251
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @close(i32 %261)
  br label %173

263:                                              ; preds = %251
  br label %264

264:                                              ; preds = %263, %246
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @IPPROTO_IPV6, align 4
  %267 = load i32, i32* @IPV6_V6ONLY, align 4
  %268 = call i32 @setsockopt(i32 %265, i32 %266, i32 %267, i32* @on, i32 4)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = load i32, i32* @LOG_ERR, align 4
  %272 = call i32 (i32, i8*, ...) @syslog(i32 %271, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %173

273:                                              ; preds = %264
  br label %275

274:                                              ; preds = %206
  br label %275

275:                                              ; preds = %274, %273, %236
  %276 = load i8**, i8*** @hosts, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %280)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %275
  %284 = load i8**, i8*** @hosts, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %284, i64 %286
  store i8* null, i8** %287, align 8
  br label %288

288:                                              ; preds = %283, %275
  %289 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %290 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = call i64 @strcmp(i8* %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %327

294:                                              ; preds = %288
  %295 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %296 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 @strcmp(i8* %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %327

300:                                              ; preds = %294
  %301 = load i8**, i8*** @hosts, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %301, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = load i32, i32* @servname, align 4
  %307 = bitcast %struct.addrinfo* %6 to %struct.sockaddr_un*
  %308 = bitcast %struct.addrinfo** %7 to %struct.sockaddr_un**
  %309 = call i32 @getaddrinfo(i8* %305, i32 %306, %struct.sockaddr_un* %307, %struct.sockaddr_un** %308)
  store i32 %309, i32* %11, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %300
  %312 = load i32, i32* @LOG_ERR, align 4
  %313 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %314 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %313, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = call i32 @gai_strerror(i32 %316)
  %318 = call i32 (i32, i8*, ...) @syslog(i32 %312, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %315, i32 %317)
  br label %173

319:                                              ; preds = %300
  %320 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %321 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %12, align 4
  %323 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %324 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to %struct.sockaddr*
  store %struct.sockaddr* %326, %struct.sockaddr** %15, align 8
  br label %327

327:                                              ; preds = %319, %294, %288
  %328 = load i32, i32* @S_IXUSR, align 4
  %329 = load i32, i32* @S_IXGRP, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @S_IXOTH, align 4
  %332 = or i32 %330, %331
  %333 = call i32 @umask(i32 %332)
  store i32 %333, i32* %18, align 4
  %334 = load i32, i32* %4, align 4
  %335 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %336 = load i32, i32* %12, align 4
  %337 = call i64 @bind(i32 %334, %struct.sockaddr* %335, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %367

339:                                              ; preds = %327
  %340 = load i32, i32* @LOG_ERR, align 4
  %341 = load i8**, i8*** @hosts, align 8
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  br label %354

348:                                              ; preds = %339
  %349 = load i8**, i8*** @hosts, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  br label %354

354:                                              ; preds = %348, %347
  %355 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %347 ], [ %353, %348 ]
  %356 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %357 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 (i32, i8*, ...) @syslog(i32 %340, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %355, i8* %358)
  %360 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %361 = icmp ne %struct.addrinfo* %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %354
  %363 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %364 = bitcast %struct.addrinfo* %363 to %struct.sockaddr_un*
  %365 = call i32 @freeaddrinfo(%struct.sockaddr_un* %364)
  br label %366

366:                                              ; preds = %362, %354
  br label %173

367:                                              ; preds = %327
  store i32 1, i32* %14, align 4
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %18, align 4
  %370 = call i32 @umask(i32 %369)
  %371 = load i32, i32* %12, align 4
  %372 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %373 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 4
  %374 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %375 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %374, i32 0, i32 0
  store i32 %371, i32* %375, align 8
  %376 = load i32, i32* %12, align 4
  %377 = call i8* @malloc(i32 %376)
  %378 = bitcast i8* %377 to %struct.sockaddr*
  %379 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %380 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %379, i32 0, i32 2
  store %struct.sockaddr* %378, %struct.sockaddr** %380, align 8
  %381 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %382 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %381, i32 0, i32 2
  %383 = load %struct.sockaddr*, %struct.sockaddr** %382, align 8
  %384 = icmp eq %struct.sockaddr* %383, null
  br i1 %384, label %385, label %398

385:                                              ; preds = %368
  %386 = load i32, i32* @LOG_ERR, align 4
  %387 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %388 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %387, i32 0, i32 1
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 (i32, i8*, ...) @syslog(i32 %386, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %389)
  %391 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %392 = icmp ne %struct.addrinfo* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %385
  %394 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %395 = bitcast %struct.addrinfo* %394 to %struct.sockaddr_un*
  %396 = call i32 @freeaddrinfo(%struct.sockaddr_un* %395)
  br label %397

397:                                              ; preds = %393, %385
  store i32 1, i32* %2, align 4
  br label %574

398:                                              ; preds = %368
  %399 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %400 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %399, i32 0, i32 2
  %401 = load %struct.sockaddr*, %struct.sockaddr** %400, align 8
  %402 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %403 = load i32, i32* %12, align 4
  %404 = call i32 @memcpy(%struct.sockaddr* %401, %struct.sockaddr* %402, i32 %403)
  %405 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %406 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @NC_TPI_CLTS, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %414

410:                                              ; preds = %398
  %411 = load i32, i32* %4, align 4
  %412 = load i32, i32* @SOMAXCONN, align 4
  %413 = call i32 @listen(i32 %411, i32 %412)
  br label %414

414:                                              ; preds = %410, %398
  %415 = load i32, i32* %4, align 4
  %416 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %417 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %418 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %419 = call i64 @svc_tli_create(i32 %415, %struct.netconfig* %416, %struct.t_bind* %5, i32 %417, i32 %418)
  %420 = inttoptr i64 %419 to i32*
  store i32* %420, i32** %9, align 8
  %421 = load i32*, i32** %9, align 8
  %422 = icmp eq i32* %421, null
  br i1 %422, label %423, label %429

423:                                              ; preds = %414
  %424 = load i32, i32* @LOG_ERR, align 4
  %425 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %426 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %425, i32 0, i32 1
  %427 = load i8*, i8** %426, align 8
  %428 = call i32 (i32, i8*, ...) @syslog(i32 %424, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %427)
  br label %571

429:                                              ; preds = %414
  br label %173

430:                                              ; preds = %173
  %431 = load i32, i32* %14, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %430
  store i32 1, i32* %2, align 4
  br label %574

434:                                              ; preds = %430
  br label %522

435:                                              ; preds = %129, %123
  %436 = load i32, i32* @S_IXUSR, align 4
  %437 = load i32, i32* @S_IXGRP, align 4
  %438 = or i32 %436, %437
  %439 = load i32, i32* @S_IXOTH, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @umask(i32 %440)
  store i32 %441, i32* %18, align 4
  %442 = load i32, i32* %4, align 4
  %443 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %444 = load i32, i32* %12, align 4
  %445 = call i64 @bind(i32 %442, %struct.sockaddr* %443, i32 %444)
  %446 = icmp slt i64 %445, 0
  br i1 %446, label %447, label %460

447:                                              ; preds = %435
  %448 = load i32, i32* @LOG_ERR, align 4
  %449 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %450 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %449, i32 0, i32 1
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 (i32, i8*, ...) @syslog(i32 %448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %451)
  %453 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %454 = icmp ne %struct.addrinfo* %453, null
  br i1 %454, label %455, label %459

455:                                              ; preds = %447
  %456 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %457 = bitcast %struct.addrinfo* %456 to %struct.sockaddr_un*
  %458 = call i32 @freeaddrinfo(%struct.sockaddr_un* %457)
  br label %459

459:                                              ; preds = %455, %447
  store i32 1, i32* %2, align 4
  br label %574

460:                                              ; preds = %435
  %461 = load i32, i32* %18, align 4
  %462 = call i32 @umask(i32 %461)
  %463 = load i32, i32* %12, align 4
  %464 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %465 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %464, i32 0, i32 1
  store i32 %463, i32* %465, align 4
  %466 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %467 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %466, i32 0, i32 0
  store i32 %463, i32* %467, align 8
  %468 = load i32, i32* %12, align 4
  %469 = call i8* @malloc(i32 %468)
  %470 = bitcast i8* %469 to %struct.sockaddr*
  %471 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %472 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %471, i32 0, i32 2
  store %struct.sockaddr* %470, %struct.sockaddr** %472, align 8
  %473 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %474 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %473, i32 0, i32 2
  %475 = load %struct.sockaddr*, %struct.sockaddr** %474, align 8
  %476 = icmp eq %struct.sockaddr* %475, null
  br i1 %476, label %477, label %490

477:                                              ; preds = %460
  %478 = load i32, i32* @LOG_ERR, align 4
  %479 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %480 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %479, i32 0, i32 1
  %481 = load i8*, i8** %480, align 8
  %482 = call i32 (i32, i8*, ...) @syslog(i32 %478, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %481)
  %483 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %484 = icmp ne %struct.addrinfo* %483, null
  br i1 %484, label %485, label %489

485:                                              ; preds = %477
  %486 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %487 = bitcast %struct.addrinfo* %486 to %struct.sockaddr_un*
  %488 = call i32 @freeaddrinfo(%struct.sockaddr_un* %487)
  br label %489

489:                                              ; preds = %485, %477
  store i32 1, i32* %2, align 4
  br label %574

490:                                              ; preds = %460
  %491 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %492 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %491, i32 0, i32 2
  %493 = load %struct.sockaddr*, %struct.sockaddr** %492, align 8
  %494 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %495 = load i32, i32* %12, align 4
  %496 = call i32 @memcpy(%struct.sockaddr* %493, %struct.sockaddr* %494, i32 %495)
  %497 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %498 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @NC_TPI_CLTS, align 8
  %501 = icmp ne i64 %499, %500
  br i1 %501, label %502, label %506

502:                                              ; preds = %490
  %503 = load i32, i32* %4, align 4
  %504 = load i32, i32* @SOMAXCONN, align 4
  %505 = call i32 @listen(i32 %503, i32 %504)
  br label %506

506:                                              ; preds = %502, %490
  %507 = load i32, i32* %4, align 4
  %508 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %509 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %510 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %511 = call i64 @svc_tli_create(i32 %507, %struct.netconfig* %508, %struct.t_bind* %5, i32 %509, i32 %510)
  %512 = inttoptr i64 %511 to i32*
  store i32* %512, i32** %9, align 8
  %513 = load i32*, i32** %9, align 8
  %514 = icmp eq i32* %513, null
  br i1 %514, label %515, label %521

515:                                              ; preds = %506
  %516 = load i32, i32* @LOG_ERR, align 4
  %517 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %518 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %517, i32 0, i32 1
  %519 = load i8*, i8** %518, align 8
  %520 = call i32 (i32, i8*, ...) @syslog(i32 %516, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %519)
  br label %571

521:                                              ; preds = %506
  br label %522

522:                                              ; preds = %521, %434
  %523 = load i32*, i32** %9, align 8
  %524 = load i32, i32* @RPCBPROG, align 4
  %525 = load i8*, i8** @RPCBVERS, align 8
  %526 = load i32, i32* @rpcb_service_3, align 4
  %527 = call i32 @svc_reg(i32* %523, i32 %524, i8* %525, i32 %526, i32* null)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %535, label %529

529:                                              ; preds = %522
  %530 = load i32, i32* @LOG_ERR, align 4
  %531 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %532 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %531, i32 0, i32 1
  %533 = load i8*, i8** %532, align 8
  %534 = call i32 (i32, i8*, ...) @syslog(i32 %530, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %533)
  br label %571

535:                                              ; preds = %522
  %536 = load i32, i32* @RPCBPROG, align 4
  %537 = load i8*, i8** @RPCBVERS, align 8
  %538 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %539 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %540 = call i32 @rbllist_add(i32 %536, i8* %537, %struct.netconfig* %538, %struct.netbuf* %539)
  %541 = load i32*, i32** %9, align 8
  %542 = load i32, i32* @RPCBPROG, align 4
  %543 = load i8*, i8** @RPCBVERS4, align 8
  %544 = load i32, i32* @rpcb_service_4, align 4
  %545 = call i32 @svc_reg(i32* %541, i32 %542, i8* %543, i32 %544, i32* null)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %553, label %547

547:                                              ; preds = %535
  %548 = load i32, i32* @LOG_ERR, align 4
  %549 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %550 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %549, i32 0, i32 1
  %551 = load i8*, i8** %550, align 8
  %552 = call i32 (i32, i8*, ...) @syslog(i32 %548, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %551)
  br label %571

553:                                              ; preds = %535
  %554 = load i32, i32* @RPCBPROG, align 4
  %555 = load i8*, i8** @RPCBVERS4, align 8
  %556 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %557 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %558 = call i32 @rbllist_add(i32 %554, i8* %555, %struct.netconfig* %556, %struct.netbuf* %557)
  %559 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %560 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %5, i32 0, i32 0
  %561 = call i32 @add_bndlist(%struct.netconfig* %559, %struct.netbuf* %560)
  store i32 %561, i32* %10, align 4
  %562 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %563 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* @NC_TPI_CLTS, align 8
  %566 = icmp eq i64 %564, %565
  br i1 %566, label %567, label %570

567:                                              ; preds = %553
  %568 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %569 = call i32 @create_rmtcall_fd(%struct.netconfig* %568)
  store i32 %569, i32* %10, align 4
  br label %570

570:                                              ; preds = %567, %553
  store i32 0, i32* %2, align 4
  br label %574

571:                                              ; preds = %547, %529, %515, %423
  %572 = load i32, i32* %4, align 4
  %573 = call i32 @close(i32 %572)
  store i32 1, i32* %2, align 4
  br label %574

574:                                              ; preds = %571, %570, %489, %459, %433, %397, %200, %169, %78, %67, %38
  %575 = load i32, i32* %2, align 4
  ret i32 %575
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @SUN_LEN(%struct.sockaddr_un*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32, %struct.sockaddr_un*, %struct.sockaddr_un**) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_un*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i64 @svc_tli_create(i32, %struct.netconfig*, %struct.t_bind*, i32, i32) #1

declare dso_local i32 @svc_reg(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @rbllist_add(i32, i8*, %struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @add_bndlist(%struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @create_rmtcall_fd(%struct.netconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
