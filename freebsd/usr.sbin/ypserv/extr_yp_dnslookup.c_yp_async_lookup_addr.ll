; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_async_lookup_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dnslookup.c_yp_async_lookup_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.circleq_dnsentry = type { i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32*, i32, i32 }
%struct.in_addr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"getsockopt failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@YP_YPERR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@BY_RPC_XID = common dso_local global i32 0, align 4
@YP_TRUE = common dso_local global i32 0, align 4
@YP_NOKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%u.%u.%u.%u.in-addr.arpa\00", align 1
@INADDRSZ = common dso_local global i32 0, align 4
@IN6ADDRSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%x.%x.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ip6.arpa\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"DNS address is: %s\00", align 1
@T_PTR = common dso_local global i32 0, align 4
@DEF_TTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"DNS query failed\00", align 1
@qhead = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@pending = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"queueing async DNS address lookup (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_async_lookup_addr(%struct.svc_req* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.circleq_dnsentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32* %22, i32** %13, align 8
  store i32 -1, i32* %15, align 4
  store i32 4, i32* %14, align 4
  %23 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %24 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOL_SOCKET, align 4
  %29 = load i32, i32* @SO_TYPE, align 4
  %30 = call i32 @getsockopt(i32 %27, i32 %28, i32 %29, i32* %15, i32* %14)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @YP_YPERR, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

37:                                               ; preds = %3
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SOCK_DGRAM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %43 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @svcudp_get_xid(%struct.TYPE_2__* %44)
  %46 = load i32, i32* @BY_RPC_XID, align 4
  %47 = call i32* @yp_find_dnsqent(i32 %45, i32 %46)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @YP_TRUE, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

51:                                               ; preds = %41, %37
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %121 [
    i32 129, label %53
    i32 128, label %81
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** %6, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = bitcast i32* %55 to %struct.in_addr*
  %57 = call i32 @inet_aton(i8* %54, %struct.in_addr* %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @YP_NOKEY, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

61:                                               ; preds = %53
  %62 = trunc i64 %19 to i32
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 255
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @snprintf(i8* %21, i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %74, i32 %78)
  %80 = load i32, i32* @INADDRSZ, align 4
  store i32 %80, i32* %14, align 4
  br label %123

81:                                               ; preds = %51
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @inet_pton(i32 %82, i8* %83, i32* %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @YP_NOKEY, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

89:                                               ; preds = %81
  store i8* %21, i8** %11, align 8
  %90 = load i32, i32* @IN6ADDRSZ, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %114, %89
  %93 = load i32, i32* %16, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load i8*, i8** %11, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 15
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 4
  %109 = and i32 %108, 15
  %110 = call i32 @sprintf(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %109)
  %111 = sext i32 %110 to i64
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  store i8* %113, i8** %11, align 8
  br label %114

114:                                              ; preds = %95
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %16, align 4
  br label %92

117:                                              ; preds = %92
  %118 = trunc i64 %19 to i32
  %119 = call i32 @strlcat(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @IN6ADDRSZ, align 4
  store i32 %120, i32* %14, align 4
  br label %123

121:                                              ; preds = %51
  %122 = load i32, i32* @YP_YPERR, align 4
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

123:                                              ; preds = %117, %61
  %124 = call %struct.circleq_dnsentry* (...) @yp_malloc_dnsent()
  store %struct.circleq_dnsentry* %124, %struct.circleq_dnsentry** %8, align 8
  %125 = icmp eq %struct.circleq_dnsentry* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @YP_YPERR, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

128:                                              ; preds = %123
  %129 = load i64, i64* @debug, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i32, i32* @T_PTR, align 4
  %135 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %136 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @DEF_TTL, align 4
  %138 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %139 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %138, i32 0, i32 12
  store i32 %137, i32* %139, align 4
  %140 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %141 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %144 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %143, i32 0, i32 7
  store %struct.TYPE_2__* %142, %struct.TYPE_2__** %144, align 8
  %145 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %146 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %149 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %148, i32 0, i32 11
  store i32 %147, i32* %149, align 8
  %150 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %151 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %150, i32 0, i32 10
  store i32* null, i32** %151, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %154 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %156 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SOCK_DGRAM, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %133
  %161 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %162 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %161, i32 0, i32 7
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = call i32 @svcudp_get_xid(%struct.TYPE_2__* %163)
  %165 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %166 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %160, %133
  %168 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %169 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %168, i32 0, i32 7
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %174 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %173, i32 0, i32 8
  store i32 %172, i32* %174, align 8
  %175 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %176 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @yp_send_dns_query(i8* %21, i32 %177)
  %179 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %180 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %182 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %167
  %186 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %187 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %188 = call i32 @free(%struct.circleq_dnsentry* %187)
  %189 = load i32, i32* @YP_YPERR, align 4
  store i32 %189, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

190:                                              ; preds = %167
  %191 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %192 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @memcpy(i32 %193, i32* %194, i32 %195)
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %199 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %202 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = call i32 @strdup(i8* %21)
  %204 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %205 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %207 = load i32, i32* @links, align 4
  %208 = call i32 @TAILQ_INSERT_HEAD(i32* @qhead, %struct.circleq_dnsentry* %206, i32 %207)
  %209 = load i32, i32* @pending, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @pending, align 4
  %211 = load i64, i64* @debug, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %190
  %214 = load %struct.circleq_dnsentry*, %struct.circleq_dnsentry** %8, align 8
  %215 = getelementptr inbounds %struct.circleq_dnsentry, %struct.circleq_dnsentry* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %216)
  br label %218

218:                                              ; preds = %213, %190
  %219 = call i32 (...) @yp_prune_dnsq()
  %220 = load i32, i32* @YP_TRUE, align 4
  store i32 %220, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

221:                                              ; preds = %218, %185, %126, %121, %87, %59, %49, %32
  %222 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32* @yp_find_dnsqent(i32, i32) #2

declare dso_local i32 @svcudp_get_xid(%struct.TYPE_2__*) #2

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @inet_pton(i32, i8*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local %struct.circleq_dnsentry* @yp_malloc_dnsent(...) #2

declare dso_local i8* @yp_send_dns_query(i8*, i32) #2

declare dso_local i32 @free(%struct.circleq_dnsentry*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.circleq_dnsentry*, i32) #2

declare dso_local i32 @yp_prune_dnsq(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
