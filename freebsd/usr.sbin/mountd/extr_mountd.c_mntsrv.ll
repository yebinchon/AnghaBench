; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_mntsrv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_mntsrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32, i32 }
%struct.exportlist = type { i32, i32*, %struct.dirlist*, %struct.dirlist* }
%struct.dirlist = type { i32 }
%struct.fhreturn = type { i32, i32, i32*, i32, i32 }
%struct.stat = type { i32 }
%struct.statfs = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.sockaddr* }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@MNTPATHLEN = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"request from unknown address family\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"can't send reply\00", align 1
@IPPORT_RESERVED = common dso_local global i32 0, align 4
@resvport_only = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"mount request from %s from unprivileged port\00", align 1
@xdr_dir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"undecodable mount request from %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"mount request from %s for non existent path %s\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@dir_only = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"mount request from %s for non-directory path %s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"mounting non-directory %s\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@exphead = common dso_local global i32 0, align 4
@xdr_long = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@DP_HOSTSET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"can't get fh for %s\00", align 1
@xdr_fhs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"mount successful\00", align 1
@dolog = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"mount request succeeded from %s for %s\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"mount request denied from %s for %s\00", align 1
@xdr_mlist = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"dump request succeeded from %s\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"umount request from %s from unprivileged port\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"undecodable umount request from %s\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"umount request from %s for non existent path %s\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"umount request succeeded from %s for %s\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"umountall request from %s from unprivileged port\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"umountall request succeeded from %s\00", align 1
@xdr_explist = common dso_local global i32 0, align 4
@xdr_explist_brief = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"export request succeeded from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mntsrv(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.exportlist*, align 8
  %6 = alloca %struct.dirlist*, align 8
  %7 = alloca %struct.fhreturn, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.statfs, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %25 = load i32, i32* @NI_MAXHOST, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @NI_MAXHOST, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %32 = load i32, i32* @MNTPATHLEN, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %16, align 8
  %36 = load i32, i32* @MAXPATHLEN, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %39 = call i32 @sigemptyset(i32* %21)
  %40 = load i32, i32* @SIGHUP, align 4
  %41 = call i32 @sigaddset(i32* %21, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call %struct.TYPE_2__* @svc_getrpccaller(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.sockaddr*, %struct.sockaddr** %44, align 8
  store %struct.sockaddr* %45, %struct.sockaddr** %14, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %61 [
    i32 134, label %49
    i32 135, label %55
  ]

49:                                               ; preds = %2
  %50 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %51 = bitcast %struct.sockaddr* %50 to %struct.sockaddr_in6*
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  store i32 %54, i32* %15, align 4
  br label %64

55:                                               ; preds = %2
  %56 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %57 = bitcast %struct.sockaddr* %56 to %struct.sockaddr_in*
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  store i32 %60, i32* %15, align 4
  br label %64

61:                                               ; preds = %2
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = call i32 (i32, i8*, ...) @syslog(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %24, align 4
  br label %442

64:                                               ; preds = %55, %49
  %65 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %66 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %75 [
    i32 131, label %68
    i32 130, label %68
    i32 129, label %68
  ]

68:                                               ; preds = %64, %64, %64
  %69 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = trunc i64 %26 to i32
  %74 = call i32 @getnameinfo(%struct.sockaddr* %69, i32 %72, i8* %28, i32 %73, i32* null, i32 0, i32 0)
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %68, %64
  %76 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %77 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %78 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = trunc i64 %30 to i32
  %81 = load i32, i32* @NI_NUMERICHOST, align 4
  %82 = call i32 @getnameinfo(%struct.sockaddr* %76, i32 %79, i8* %31, i32 %80, i32* null, i32 0, i32 %81)
  %83 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %84 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %439 [
    i32 128, label %86
    i32 131, label %95
    i32 133, label %320
    i32 130, label %336
    i32 129, label %385
    i32 132, label %418
  ]

86:                                               ; preds = %75
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @xdr_void, align 4
  %89 = call i32 @svc_sendreply(i32* %87, i32 %88, i32* null)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @LOG_ERR, align 4
  %93 = call i32 (i32, i8*, ...) @syslog(i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  store i32 1, i32* %24, align 4
  br label %442

95:                                               ; preds = %75
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @IPPORT_RESERVED, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* @resvport_only, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* @LOG_NOTICE, align 4
  %104 = call i32 (i32, i8*, ...) @syslog(i32 %103, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @svcerr_weakauth(i32* %105)
  store i32 1, i32* %24, align 4
  br label %442

107:                                              ; preds = %99, %95
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @xdr_dir, align 4
  %110 = call i32 @svc_getargs(i32* %108, i32 %109, i8* %35)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @LOG_NOTICE, align 4
  %114 = call i32 (i32, i8*, ...) @syslog(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @svcerr_decode(i32* %115)
  store i32 1, i32* %24, align 4
  br label %442

117:                                              ; preds = %107
  %118 = call i32* @realpath(i8* %35, i8* %38)
  %119 = icmp eq i32* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = call i32 @stat(i8* %38, %struct.stat* %8)
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = call i32 @statfs(i8* %38, %struct.statfs* %9)
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123, %120, %117
  %127 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @LOG_NOTICE, align 4
  %129 = call i32 (i32, i8*, ...) @syslog(i32 %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %31, i8* %38)
  %130 = load i32, i32* @debug, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %38)
  br label %134

134:                                              ; preds = %132, %126
  %135 = load i32, i32* @ENOENT, align 4
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %134, %123
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %161, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @S_ISDIR(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @dir_only, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @S_ISREG(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %147, %144
  %153 = load i32, i32* @LOG_NOTICE, align 4
  %154 = call i32 (i32, i8*, ...) @syslog(i32 %153, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %31, i8* %38)
  %155 = load i32, i32* @debug, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %38)
  br label %159

159:                                              ; preds = %157, %152
  %160 = load i32, i32* @ENOTDIR, align 4
  store i32 %160, i32* %18, align 4
  br label %161

161:                                              ; preds = %159, %147, %139, %136
  %162 = load i32, i32* @SIG_BLOCK, align 4
  %163 = call i32 @sigprocmask(i32 %162, i32* %21, i32* null)
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store %struct.exportlist* null, %struct.exportlist** %5, align 8
  br label %171

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 0
  %169 = load i32, i32* @exphead, align 4
  %170 = call %struct.exportlist* @ex_search(i32* %168, i32 %169)
  store %struct.exportlist* %170, %struct.exportlist** %5, align 8
  br label %171

171:                                              ; preds = %167, %166
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %172 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %173 = icmp ne %struct.exportlist* %172, null
  br i1 %173, label %174, label %298

174:                                              ; preds = %171
  %175 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %176 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %175, i32 0, i32 3
  %177 = load %struct.dirlist*, %struct.dirlist** %176, align 8
  %178 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %179 = call i32 @chk_host(%struct.dirlist* %177, %struct.sockaddr* %178, i32* %19, i32* %20, i32* %22, i32** %23)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %209, label %181

181:                                              ; preds = %174
  %182 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %183 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %182, i32 0, i32 2
  %184 = load %struct.dirlist*, %struct.dirlist** %183, align 8
  %185 = call %struct.dirlist* @dirp_search(%struct.dirlist* %184, i8* %38)
  store %struct.dirlist* %185, %struct.dirlist** %6, align 8
  %186 = icmp ne %struct.dirlist* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.dirlist*, %struct.dirlist** %6, align 8
  %189 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %190 = call i32 @chk_host(%struct.dirlist* %188, %struct.sockaddr* %189, i32* %19, i32* %20, i32* %22, i32** %23)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %187, %181
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %298

195:                                              ; preds = %192
  %196 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %197 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %196, i32 0, i32 3
  %198 = load %struct.dirlist*, %struct.dirlist** %197, align 8
  %199 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %200 = call i32 @scan_tree(%struct.dirlist* %198, %struct.sockaddr* %199)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %298

202:                                              ; preds = %195
  %203 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %204 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %203, i32 0, i32 2
  %205 = load %struct.dirlist*, %struct.dirlist** %204, align 8
  %206 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %207 = call i32 @scan_tree(%struct.dirlist* %205, %struct.sockaddr* %206)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %298

209:                                              ; preds = %202, %187, %174
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load i32*, i32** %4, align 8
  %214 = load i32, i32* @xdr_long, align 4
  %215 = call i32 @svc_sendreply(i32* %213, i32 %214, i32* %18)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* @LOG_ERR, align 4
  %219 = call i32 (i32, i8*, ...) @syslog(i32 %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32, i32* @SIG_UNBLOCK, align 4
  %222 = call i32 @sigprocmask(i32 %221, i32* %21, i32* null)
  store i32 1, i32* %24, align 4
  br label %442

223:                                              ; preds = %209
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* @DP_HOSTSET, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load i32, i32* %20, align 4
  %230 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 0
  store i32 %229, i32* %230, align 8
  %231 = load i32, i32* %22, align 4
  %232 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  %233 = load i32*, i32** %23, align 8
  %234 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 2
  store i32* %233, i32** %234, align 8
  br label %246

235:                                              ; preds = %223
  %236 = load i32, i32* %19, align 4
  %237 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 0
  store i32 %236, i32* %237, align 8
  %238 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %239 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 1
  store i32 %240, i32* %241, align 4
  %242 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %243 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 2
  store i32* %244, i32** %245, align 8
  br label %246

246:                                              ; preds = %235, %228
  %247 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %248 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 4
  store i32 %249, i32* %250, align 4
  %251 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 3
  %252 = call i32 @memset(i32* %251, i32 0, i32 4)
  %253 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %7, i32 0, i32 3
  %254 = call i32 @getfh(i8* %38, i32* %253)
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %246
  %257 = load i32, i32* @errno, align 4
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* @LOG_ERR, align 4
  %259 = call i32 (i32, i8*, ...) @syslog(i32 %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %38)
  %260 = load i32*, i32** %4, align 8
  %261 = load i32, i32* @xdr_long, align 4
  %262 = call i32 @svc_sendreply(i32* %260, i32 %261, i32* %18)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %256
  %265 = load i32, i32* @LOG_ERR, align 4
  %266 = call i32 (i32, i8*, ...) @syslog(i32 %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %256
  %268 = load i32, i32* @SIG_UNBLOCK, align 4
  %269 = call i32 @sigprocmask(i32 %268, i32* %21, i32* null)
  store i32 1, i32* %24, align 4
  br label %442

270:                                              ; preds = %246
  %271 = load i32*, i32** %4, align 8
  %272 = load i32, i32* @xdr_fhs, align 4
  %273 = bitcast %struct.fhreturn* %7 to i32*
  %274 = call i32 @svc_sendreply(i32* %271, i32 %272, i32* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %270
  %277 = load i32, i32* @LOG_ERR, align 4
  %278 = call i32 (i32, i8*, ...) @syslog(i32 %277, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %270
  %280 = load i32, i32* %13, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = call i32 @add_mlist(i8* %28, i8* %38)
  br label %286

284:                                              ; preds = %279
  %285 = call i32 @add_mlist(i8* %31, i8* %38)
  br label %286

286:                                              ; preds = %284, %282
  %287 = load i32, i32* @debug, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %286
  %292 = load i32, i32* @dolog, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* @LOG_NOTICE, align 4
  %296 = call i32 (i32, i8*, ...) @syslog(i32 %295, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %31, i8* %38)
  br label %297

297:                                              ; preds = %294, %291
  br label %306

298:                                              ; preds = %202, %195, %192, %171
  %299 = load i32, i32* %18, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %298
  %302 = load i32, i32* @EACCES, align 4
  store i32 %302, i32* %18, align 4
  br label %303

303:                                              ; preds = %301, %298
  %304 = load i32, i32* @LOG_NOTICE, align 4
  %305 = call i32 (i32, i8*, ...) @syslog(i32 %304, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %31, i8* %38)
  br label %306

306:                                              ; preds = %303, %297
  %307 = load i32, i32* %18, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %306
  %310 = load i32*, i32** %4, align 8
  %311 = load i32, i32* @xdr_long, align 4
  %312 = call i32 @svc_sendreply(i32* %310, i32 %311, i32* %18)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %309
  %315 = load i32, i32* @LOG_ERR, align 4
  %316 = call i32 (i32, i8*, ...) @syslog(i32 %315, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %309, %306
  %318 = load i32, i32* @SIG_UNBLOCK, align 4
  %319 = call i32 @sigprocmask(i32 %318, i32* %21, i32* null)
  store i32 1, i32* %24, align 4
  br label %442

320:                                              ; preds = %75
  %321 = load i32*, i32** %4, align 8
  %322 = load i32, i32* @xdr_mlist, align 4
  %323 = call i32 @svc_sendreply(i32* %321, i32 %322, i32* null)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %320
  %326 = load i32, i32* @LOG_ERR, align 4
  %327 = call i32 (i32, i8*, ...) @syslog(i32 %326, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %335

328:                                              ; preds = %320
  %329 = load i32, i32* @dolog, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i32, i32* @LOG_NOTICE, align 4
  %333 = call i32 (i32, i8*, ...) @syslog(i32 %332, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* %31)
  br label %334

334:                                              ; preds = %331, %328
  br label %335

335:                                              ; preds = %334, %325
  store i32 1, i32* %24, align 4
  br label %442

336:                                              ; preds = %75
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* @IPPORT_RESERVED, align 4
  %339 = icmp sge i32 %337, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %336
  %341 = load i32, i32* @resvport_only, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = load i32, i32* @LOG_NOTICE, align 4
  %345 = call i32 (i32, i8*, ...) @syslog(i32 %344, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* %31)
  %346 = load i32*, i32** %4, align 8
  %347 = call i32 @svcerr_weakauth(i32* %346)
  store i32 1, i32* %24, align 4
  br label %442

348:                                              ; preds = %340, %336
  %349 = load i32*, i32** %4, align 8
  %350 = load i32, i32* @xdr_dir, align 4
  %351 = call i32 @svc_getargs(i32* %349, i32 %350, i8* %35)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %358, label %353

353:                                              ; preds = %348
  %354 = load i32, i32* @LOG_NOTICE, align 4
  %355 = call i32 (i32, i8*, ...) @syslog(i32 %354, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %31)
  %356 = load i32*, i32** %4, align 8
  %357 = call i32 @svcerr_decode(i32* %356)
  store i32 1, i32* %24, align 4
  br label %442

358:                                              ; preds = %348
  %359 = call i32* @realpath(i8* %35, i8* %38)
  %360 = icmp eq i32* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load i32, i32* @LOG_NOTICE, align 4
  %363 = call i32 (i32, i8*, ...) @syslog(i32 %362, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* %31, i8* %38)
  br label %364

364:                                              ; preds = %361, %358
  %365 = load i32*, i32** %4, align 8
  %366 = load i32, i32* @xdr_void, align 4
  %367 = call i32 @svc_sendreply(i32* %365, i32 %366, i32* null)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %364
  %370 = load i32, i32* @LOG_ERR, align 4
  %371 = call i32 (i32, i8*, ...) @syslog(i32 %370, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %372

372:                                              ; preds = %369, %364
  %373 = load i32, i32* %13, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %372
  %376 = call i32 @del_mlist(i8* %28, i8* %38)
  br label %377

377:                                              ; preds = %375, %372
  %378 = call i32 @del_mlist(i8* %31, i8* %38)
  %379 = load i32, i32* @dolog, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %377
  %382 = load i32, i32* @LOG_NOTICE, align 4
  %383 = call i32 (i32, i8*, ...) @syslog(i32 %382, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i8* %31, i8* %38)
  br label %384

384:                                              ; preds = %381, %377
  store i32 1, i32* %24, align 4
  br label %442

385:                                              ; preds = %75
  %386 = load i32, i32* %15, align 4
  %387 = load i32, i32* @IPPORT_RESERVED, align 4
  %388 = icmp sge i32 %386, %387
  br i1 %388, label %389, label %397

389:                                              ; preds = %385
  %390 = load i32, i32* @resvport_only, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %389
  %393 = load i32, i32* @LOG_NOTICE, align 4
  %394 = call i32 (i32, i8*, ...) @syslog(i32 %393, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0), i8* %31)
  %395 = load i32*, i32** %4, align 8
  %396 = call i32 @svcerr_weakauth(i32* %395)
  store i32 1, i32* %24, align 4
  br label %442

397:                                              ; preds = %389, %385
  %398 = load i32*, i32** %4, align 8
  %399 = load i32, i32* @xdr_void, align 4
  %400 = call i32 @svc_sendreply(i32* %398, i32 %399, i32* null)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  %403 = load i32, i32* @LOG_ERR, align 4
  %404 = call i32 (i32, i8*, ...) @syslog(i32 %403, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %405

405:                                              ; preds = %402, %397
  %406 = load i32, i32* %13, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %410, label %408

408:                                              ; preds = %405
  %409 = call i32 @del_mlist(i8* %28, i8* null)
  br label %410

410:                                              ; preds = %408, %405
  %411 = call i32 @del_mlist(i8* %31, i8* null)
  %412 = load i32, i32* @dolog, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %410
  %415 = load i32, i32* @LOG_NOTICE, align 4
  %416 = call i32 (i32, i8*, ...) @syslog(i32 %415, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* %31)
  br label %417

417:                                              ; preds = %414, %410
  store i32 1, i32* %24, align 4
  br label %442

418:                                              ; preds = %75
  %419 = load i32*, i32** %4, align 8
  %420 = load i32, i32* @xdr_explist, align 4
  %421 = call i32 @svc_sendreply(i32* %419, i32 %420, i32* null)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %432, label %423

423:                                              ; preds = %418
  %424 = load i32*, i32** %4, align 8
  %425 = load i32, i32* @xdr_explist_brief, align 4
  %426 = call i32 @svc_sendreply(i32* %424, i32 %425, i32* null)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %423
  %429 = load i32, i32* @LOG_ERR, align 4
  %430 = call i32 (i32, i8*, ...) @syslog(i32 %429, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %431

431:                                              ; preds = %428, %423
  br label %432

432:                                              ; preds = %431, %418
  %433 = load i32, i32* @dolog, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = load i32, i32* @LOG_NOTICE, align 4
  %437 = call i32 (i32, i8*, ...) @syslog(i32 %436, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* %31)
  br label %438

438:                                              ; preds = %435, %432
  store i32 1, i32* %24, align 4
  br label %442

439:                                              ; preds = %75
  %440 = load i32*, i32** %4, align 8
  %441 = call i32 @svcerr_noproc(i32* %440)
  store i32 1, i32* %24, align 4
  br label %442

442:                                              ; preds = %439, %438, %417, %392, %384, %353, %343, %335, %317, %267, %220, %112, %102, %94, %61
  %443 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %443)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local %struct.TYPE_2__* @svc_getrpccaller(i32*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @svc_sendreply(i32*, i32, i32*) #2

declare dso_local i32 @svcerr_weakauth(i32*) #2

declare dso_local i32 @svc_getargs(i32*, i32, i8*) #2

declare dso_local i32 @svcerr_decode(i32*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @chdir(i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local %struct.exportlist* @ex_search(i32*, i32) #2

declare dso_local i32 @chk_host(%struct.dirlist*, %struct.sockaddr*, i32*, i32*, i32*, i32**) #2

declare dso_local %struct.dirlist* @dirp_search(%struct.dirlist*, i8*) #2

declare dso_local i32 @scan_tree(%struct.dirlist*, %struct.sockaddr*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @getfh(i8*, i32*) #2

declare dso_local i32 @add_mlist(i8*, i8*) #2

declare dso_local i32 @del_mlist(i8*, i8*) #2

declare dso_local i32 @svcerr_noproc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
