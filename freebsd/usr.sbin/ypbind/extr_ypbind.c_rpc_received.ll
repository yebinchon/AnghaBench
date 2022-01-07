; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_rpc_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_rpc_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypbind_resp = type { i8*, i32, i32, i32, i32, %struct.TYPE_9__, i32, i64, %struct.TYPE_12__, %struct.ypbind_resp* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct._dom_binding = type { i8*, i32, i32, i32, i32, %struct.TYPE_9__, i32, i64, %struct.TYPE_12__, %struct._dom_binding* }
%struct.iovec = type { i8*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ypbindlist = common dso_local global %struct.ypbind_resp* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@READFD = common dso_local global i32 0, align 4
@fdsr = common dso_local global i32 0, align 4
@svc_fdset = common dso_local global i32 0, align 4
@WRITEFD = common dso_local global i32 0, align 4
@ypsecuremode = common dso_local global i64 0, align 8
@IPPORT_RESERVED = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Rejected NIS server on [%s/%d] for domain %s.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/%s.%ld\00", align 1
@BINDINGDIR = common dso_local global i8* null, align 8
@YPVERS = common dso_local global i32 0, align 4
@domains = common dso_local global i32 0, align 4
@YPMAXDOMAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"domain %s too long\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"malloc: %m\00", align 1
@not_responding_count = common dso_local global i64 0, align 8
@NOT_RESPONDING_HYSTERESIS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"NIS server [%s] for domain \22%s\22 OK\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@LOCK_SH = common dso_local global i32 0, align 4
@udptransp = common dso_local global %struct.TYPE_10__* null, align 8
@YPBIND_SUCC_VAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"write: %m\00", align 1
@O_SHLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_received(i8* %0, %struct.sockaddr_in* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._dom_binding*, align 8
  %8 = alloca %struct._dom_binding*, align 8
  %9 = alloca [2 x %struct.iovec], align 16
  %10 = alloca %struct.ypbind_resp, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct._dom_binding* null, %struct._dom_binding** %8, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %326

22:                                               ; preds = %3
  %23 = load %struct.ypbind_resp*, %struct.ypbind_resp** @ypbindlist, align 8
  %24 = bitcast %struct.ypbind_resp* %23 to %struct._dom_binding*
  store %struct._dom_binding* %24, %struct._dom_binding** %7, align 8
  br label %25

25:                                               ; preds = %38, %22
  %26 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %27 = icmp ne %struct._dom_binding* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %30 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %42

36:                                               ; preds = %28
  %37 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  store %struct._dom_binding* %37, %struct._dom_binding** %8, align 8
  br label %38

38:                                               ; preds = %36
  %39 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %40 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %39, i32 0, i32 9
  %41 = load %struct._dom_binding*, %struct._dom_binding** %40, align 8
  store %struct._dom_binding* %41, %struct._dom_binding** %7, align 8
  br label %25

42:                                               ; preds = %35, %25
  %43 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %44 = icmp ne %struct._dom_binding* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %50 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %55 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @SIGINT, align 4
  %58 = call i32 @kill(i64 %56, i32 %57)
  %59 = load i32, i32* @READFD, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* @READFD, align 4
  %62 = call i32 @FD_CLR(i32 %61, i32* @fdsr)
  %63 = load i32, i32* @READFD, align 4
  %64 = call i32 @FD_CLR(i32 %63, i32* @svc_fdset)
  store i32 -1, i32* @WRITEFD, align 4
  store i32 -1, i32* @READFD, align 4
  br label %65

65:                                               ; preds = %53, %48
  br label %66

66:                                               ; preds = %65, %45, %42
  %67 = load i64, i64* @ypsecuremode, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @ntohs(i64 %72)
  %74 = load i64, i64* @IPPORT_RESERVED, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %69
  %77 = load i32, i32* @LOG_WARNING, align 4
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @inet_ntoa(i64 %81)
  %83 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @ntohs(i64 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 (i32, i8*, ...) @syslog(i32 %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %82, i64 %86, i8* %87)
  %89 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %90 = icmp ne %struct._dom_binding* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %93 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %92, i32 0, i32 7
  store i64 0, i64* %93, align 8
  %94 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %95 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %94, i32 0, i32 1
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %76
  store i32 1, i32* %14, align 4
  br label %326

97:                                               ; preds = %69, %66
  %98 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %97
  %104 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %105 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %146 [
    i32 0, label %107
    i32 1, label %138
  ]

107:                                              ; preds = %103
  %108 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %109 = icmp eq %struct._dom_binding* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %112 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %111, i32 0, i32 9
  %113 = load %struct._dom_binding*, %struct._dom_binding** %112, align 8
  %114 = bitcast %struct._dom_binding* %113 to %struct.ypbind_resp*
  store %struct.ypbind_resp* %114, %struct.ypbind_resp** @ypbindlist, align 8
  br label %121

115:                                              ; preds = %107
  %116 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %117 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %116, i32 0, i32 9
  %118 = load %struct._dom_binding*, %struct._dom_binding** %117, align 8
  %119 = load %struct._dom_binding*, %struct._dom_binding** %8, align 8
  %120 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %119, i32 0, i32 9
  store %struct._dom_binding* %118, %struct._dom_binding** %120, align 8
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i8*, i8** @BINDINGDIR, align 8
  %123 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %124 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @YPVERS, align 4
  %127 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %122, i8* %125, i32 %126)
  %128 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %129 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @close(i32 %130)
  %132 = call i32 @unlink(i8* %18)
  %133 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %134 = bitcast %struct._dom_binding* %133 to %struct.ypbind_resp*
  %135 = call i32 @free(%struct.ypbind_resp* %134)
  %136 = load i32, i32* @domains, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* @domains, align 4
  store i32 1, i32* %14, align 4
  br label %326

138:                                              ; preds = %103
  %139 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %140 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %139, i32 0, i32 7
  store i64 0, i64* %140, align 8
  %141 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %142 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %141, i32 0, i32 1
  store i32 0, i32* %142, align 8
  %143 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %144 = bitcast %struct._dom_binding* %143 to %struct.ypbind_resp*
  %145 = call i32 @broadcast(%struct.ypbind_resp* %144)
  store i32 1, i32* %14, align 4
  br label %326

146:                                              ; preds = %103
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147, %97
  %149 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %150 = icmp eq %struct._dom_binding* %149, null
  br i1 %150, label %151, label %191

151:                                              ; preds = %148
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 1, i32* %14, align 4
  br label %326

155:                                              ; preds = %151
  %156 = load i8*, i8** %4, align 8
  %157 = call i64 @strlen(i8* %156)
  %158 = load i64, i64* @YPMAXDOMAIN, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @LOG_WARNING, align 4
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 (i32, i8*, ...) @syslog(i32 %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %162)
  store i32 1, i32* %14, align 4
  br label %326

164:                                              ; preds = %155
  %165 = call %struct.ypbind_resp* @malloc(i32 64)
  %166 = bitcast %struct.ypbind_resp* %165 to %struct._dom_binding*
  store %struct._dom_binding* %166, %struct._dom_binding** %7, align 8
  %167 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %168 = icmp eq %struct._dom_binding* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* @LOG_WARNING, align 4
  %171 = call i32 (i32, i8*, ...) @syslog(i32 %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %326

172:                                              ; preds = %164
  %173 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %174 = bitcast %struct._dom_binding* %173 to %struct.ypbind_resp*
  %175 = call i32 @bzero(%struct.ypbind_resp* %174, i32 64)
  %176 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %177 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @strlcpy(i8* %178, i8* %179, i32 8)
  %181 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %182 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %181, i32 0, i32 3
  store i32 -1, i32* %182, align 8
  %183 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %184 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %183, i32 0, i32 2
  store i32 0, i32* %184, align 4
  %185 = load %struct.ypbind_resp*, %struct.ypbind_resp** @ypbindlist, align 8
  %186 = bitcast %struct.ypbind_resp* %185 to %struct._dom_binding*
  %187 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %188 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %187, i32 0, i32 9
  store %struct._dom_binding* %186, %struct._dom_binding** %188, align 8
  %189 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %190 = bitcast %struct._dom_binding* %189 to %struct.ypbind_resp*
  store %struct.ypbind_resp* %190, %struct.ypbind_resp** @ypbindlist, align 8
  br label %191

191:                                              ; preds = %172, %148
  %192 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %193 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %219

196:                                              ; preds = %191
  %197 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %198 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %196
  %204 = load i64, i64* @not_responding_count, align 8
  %205 = load i64, i64* @NOT_RESPONDING_HYSTERESIS, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  store i64 0, i64* @not_responding_count, align 8
  %208 = load i32, i32* @LOG_WARNING, align 4
  %209 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %210 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @inet_ntoa(i64 %212)
  %214 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %215 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i32, i8*, ...) @syslog(i32 %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %213, i8* %216)
  br label %218

218:                                              ; preds = %207, %203
  br label %219

219:                                              ; preds = %218, %196, %191
  %220 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %221 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %222 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %221, i32 0, i32 8
  %223 = call i32 @bcopy(%struct.sockaddr_in* %220, %struct.TYPE_12__* %222, i32 8)
  %224 = load i32, i32* @YPVERS, align 4
  %225 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %226 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %225, i32 0, i32 4
  store i32 %224, i32* %226, align 4
  %227 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %228 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %227, i32 0, i32 1
  store i32 1, i32* %228, align 8
  %229 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %230 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %229, i32 0, i32 7
  store i64 0, i64* %230, align 8
  %231 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %232 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, -1
  br i1 %234, label %235, label %240

235:                                              ; preds = %219
  %236 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %237 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @close(i32 %238)
  br label %240

240:                                              ; preds = %235, %219
  %241 = load i8*, i8** @BINDINGDIR, align 8
  %242 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %243 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %246 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %241, i8* %244, i32 %247)
  %249 = load i32, i32* @O_CREAT, align 4
  %250 = load i32, i32* @O_RDWR, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @O_TRUNC, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @open(i8* %18, i32 %253, i32 420)
  store i32 %254, i32* %13, align 4
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %268

256:                                              ; preds = %240
  %257 = load i8*, i8** @BINDINGDIR, align 8
  %258 = call i32 @mkdir(i8* %257, i32 493)
  %259 = load i32, i32* @O_CREAT, align 4
  %260 = load i32, i32* @O_RDWR, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @O_TRUNC, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @open(i8* %18, i32 %263, i32 420)
  store i32 %264, i32* %13, align 4
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  store i32 1, i32* %14, align 4
  br label %326

267:                                              ; preds = %256
  br label %268

268:                                              ; preds = %267, %240
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @LOCK_SH, align 4
  %271 = call i32 @flock(i32 %269, i32 %270)
  %272 = load i32, i32* %13, align 4
  %273 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %274 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udptransp, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = bitcast i32* %276 to i8*
  %278 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %279 = getelementptr inbounds %struct.iovec, %struct.iovec* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 16
  %280 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %281 = getelementptr inbounds %struct.iovec, %struct.iovec* %280, i32 0, i32 1
  store i32 4, i32* %281, align 8
  %282 = bitcast %struct.ypbind_resp* %10 to i8*
  %283 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 1
  %284 = getelementptr inbounds %struct.iovec, %struct.iovec* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 16
  %285 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 1
  %286 = getelementptr inbounds %struct.iovec, %struct.iovec* %285, i32 0, i32 1
  store i32 64, i32* %286, align 8
  %287 = call i32 @bzero(%struct.ypbind_resp* %10, i32 64)
  %288 = load i32, i32* @YPBIND_SUCC_VAL, align 4
  %289 = getelementptr inbounds %struct.ypbind_resp, %struct.ypbind_resp* %10, i32 0, i32 6
  store i32 %288, i32* %289, align 8
  %290 = getelementptr inbounds %struct.ypbind_resp, %struct.ypbind_resp* %10, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  %293 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %294 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = call i32 @memcpy(i32* %292, i64* %295, i32 4)
  %297 = getelementptr inbounds %struct.ypbind_resp, %struct.ypbind_resp* %10, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %301 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %300, i32 0, i32 0
  %302 = call i32 @memcpy(i32* %299, i64* %301, i32 4)
  %303 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %304 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %307 = call i32 @writev(i32 %305, %struct.iovec* %306, i32 2)
  %308 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 0
  %309 = getelementptr inbounds %struct.iovec, %struct.iovec* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %9, i64 0, i64 1
  %312 = getelementptr inbounds %struct.iovec, %struct.iovec* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %310, %313
  %315 = icmp ne i32 %307, %314
  br i1 %315, label %316, label %325

316:                                              ; preds = %268
  %317 = load i32, i32* @LOG_WARNING, align 4
  %318 = call i32 (i32, i8*, ...) @syslog(i32 %317, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %319 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %320 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @close(i32 %321)
  %323 = load %struct._dom_binding*, %struct._dom_binding** %7, align 8
  %324 = getelementptr inbounds %struct._dom_binding, %struct._dom_binding* %323, i32 0, i32 3
  store i32 -1, i32* %324, align 8
  store i32 1, i32* %14, align 4
  br label %326

325:                                              ; preds = %268
  store i32 0, i32* %14, align 4
  br label %326

326:                                              ; preds = %325, %316, %266, %169, %160, %154, %138, %121, %96, %21
  %327 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %327)
  %328 = load i32, i32* %14, align 4
  switch i32 %328, label %330 [
    i32 0, label %329
    i32 1, label %329
  ]

329:                                              ; preds = %326, %326
  ret void

330:                                              ; preds = %326
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @kill(i64, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @FD_CLR(i32, i32*) #2

declare dso_local i64 @ntohs(i64) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @inet_ntoa(i64) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @free(%struct.ypbind_resp*) #2

declare dso_local i32 @broadcast(%struct.ypbind_resp*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.ypbind_resp* @malloc(i32) #2

declare dso_local i32 @bzero(%struct.ypbind_resp*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @bcopy(%struct.sockaddr_in*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @flock(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
