; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_rt_Set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_rt_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_9__*, %struct.TYPE_8__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ncprange = type { i32 }
%struct.ncpaddr = type { i32 }
%struct.rtmsg = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_6__, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.sockaddr_storage = type { i32 }

@RTM_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Add!\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Delete!\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@PF_ROUTE = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"rt_Set: socket(): %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@RTM_VERSION = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_STATIC = common dso_local global i32 0, align 4
@RTV_SPIPE = common dso_local global i32 0, align 4
@RTV_RPIPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"rt_Set: Program error\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"rt_Set: Cannot add a route with gateway 0.0.0.0\0A\00", align 1
@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTA_NETMASK = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@LogTCPIP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"rt_Set failure:\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"rt_Set:  Cmd = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"rt_Set:  Dst = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"rt_Set:  Gateway = %s\0A\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Add route failed: %s already exists\0A\00", align 1
@RTM_CHANGE = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"Del route failed: %s: Non-existent\0A\00", align 1
@ENETUNREACH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"%s route failed: %s: errno: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%s route failed: %s: %s\0A\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@NCP_ASCIIBUFFERSIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"wrote %d: cmd = %s, dst = %s, gateway = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_Set(%struct.bundle* %0, i32 %1, %struct.ncprange* %2, %struct.ncpaddr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ncprange*, align 8
  %11 = alloca %struct.ncpaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtmsg, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.sockaddr_storage, align 4
  %21 = alloca %struct.sockaddr_storage, align 4
  %22 = alloca %struct.sockaddr_storage, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.bundle* %0, %struct.bundle** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ncprange* %2, %struct.ncprange** %10, align 8
  store %struct.ncpaddr* %3, %struct.ncpaddr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %23, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RTM_ADD, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %33, i8** %19, align 8
  br label %40

34:                                               ; preds = %6
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RTM_ADD, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  store i8* %39, i8** %19, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @PF_ROUTE, align 4
  %42 = load i32, i32* @SOCK_RAW, align 4
  %43 = call i32 @ID0socket(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @LogERROR, align 4
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 (i32, i8*, ...) @log_Printf(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %23, align 4
  store i32 %51, i32* %7, align 4
  br label %366

52:                                               ; preds = %40
  %53 = call i32 @memset(%struct.rtmsg* %14, i8 signext 0, i32 80)
  %54 = load i32, i32* @RTM_VERSION, align 4
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @RTA_DST, align 4
  %61 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bundle*, %struct.bundle** %8, align 8
  %64 = getelementptr inbounds %struct.bundle, %struct.bundle* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 8
  store i64 %66, i64* %68, align 8
  %69 = call i32 (...) @getpid()
  %70 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @RTF_UP, align 4
  %73 = load i32, i32* @RTF_GATEWAY, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RTF_STATIC, align 4
  %76 = or i32 %74, %75
  %77 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @RTM_ADD, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %52
  %83 = load %struct.bundle*, %struct.bundle** %8, align 8
  %84 = getelementptr inbounds %struct.bundle, %struct.bundle* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load %struct.bundle*, %struct.bundle** %8, align 8
  %91 = getelementptr inbounds %struct.bundle, %struct.bundle* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load i32, i32* @RTV_SPIPE, align 4
  %99 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %89, %82
  %104 = load %struct.bundle*, %struct.bundle** %8, align 8
  %105 = getelementptr inbounds %struct.bundle, %struct.bundle* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load %struct.bundle*, %struct.bundle** %8, align 8
  %112 = getelementptr inbounds %struct.bundle, %struct.bundle* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load i32, i32* @RTV_RPIPE, align 4
  %120 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %110, %103
  br label %125

125:                                              ; preds = %124, %52
  %126 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %127 = call i32 @ncprange_getsa(%struct.ncprange* %126, %struct.sockaddr_storage* %20, %struct.sockaddr_storage* %21)
  %128 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %18, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %20, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy_roundup(i8* %130, %struct.sockaddr_storage* %20, i32 %132)
  %134 = load i8*, i8** %18, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %18, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @RTM_ADD, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %179

140:                                              ; preds = %125
  %141 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %142 = icmp eq %struct.ncpaddr* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* @LogERROR, align 4
  %145 = call i32 (i32, i8*, ...) @log_Printf(i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @close(i32 %146)
  %148 = load i32, i32* %23, align 4
  store i32 %148, i32* %7, align 4
  br label %366

149:                                              ; preds = %140
  %150 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %151 = call i32 @ncpaddr_getsa(%struct.ncpaddr* %150, %struct.sockaddr_storage* %22)
  %152 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %153 = call i64 @ncpaddr_isdefault(%struct.ncpaddr* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @LogERROR, align 4
  %160 = call i32 (i32, i8*, ...) @log_Printf(i32 %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @close(i32 %162)
  %164 = load i32, i32* %23, align 4
  store i32 %164, i32* %7, align 4
  br label %366

165:                                              ; preds = %149
  %166 = load i8*, i8** %18, align 8
  %167 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %22, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @memcpy_roundup(i8* %166, %struct.sockaddr_storage* %22, i32 %168)
  %170 = load i8*, i8** %18, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %18, align 8
  %173 = load i32, i32* @RTA_GATEWAY, align 4
  %174 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178, %125
  %180 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %181 = call i32 @ncprange_ishost(%struct.ncprange* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %179
  %184 = load i8*, i8** %18, align 8
  %185 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %21, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @memcpy_roundup(i8* %184, %struct.sockaddr_storage* %21, i32 %186)
  %188 = load i8*, i8** %18, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %18, align 8
  %191 = load i32, i32* @RTA_NETMASK, align 4
  %192 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %202

196:                                              ; preds = %179
  %197 = load i32, i32* @RTF_HOST, align 4
  %198 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %196, %183
  %203 = load i8*, i8** %18, align 8
  %204 = bitcast %struct.rtmsg* %14 to i8*
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %16, align 4
  %214 = call i32 @ID0write(i32 %212, %struct.rtmsg* %14, i32 %213)
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %335

217:                                              ; preds = %202
  %218 = load i32, i32* @LogTCPIP, align 4
  %219 = call i32 (i32, i8*, ...) @log_Printf(i32 %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %220 = load i32, i32* @LogTCPIP, align 4
  %221 = load i8*, i8** %19, align 8
  %222 = call i32 (i32, i8*, ...) @log_Printf(i32 %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %221)
  %223 = load i32, i32* @LogTCPIP, align 4
  %224 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %225 = call i32 @ncprange_ntoa(%struct.ncprange* %224)
  %226 = call i32 (i32, i8*, ...) @log_Printf(i32 %223, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %225)
  %227 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %228 = icmp ne %struct.ncpaddr* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %217
  %230 = load i32, i32* @LogTCPIP, align 4
  %231 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %232 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %231)
  %233 = call i32 (i32, i8*, ...) @log_Printf(i32 %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %229, %217
  br label %235

235:                                              ; preds = %270, %234
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @RTM_ADD, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %273

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @EEXIST, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %254, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %273

250:                                              ; preds = %245
  %251 = load i64, i64* @errno, align 8
  %252 = load i64, i64* @EEXIST, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %273

254:                                              ; preds = %250, %239
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* @LogWARN, align 4
  %259 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %260 = call i32 @ncprange_ntoa(%struct.ncprange* %259)
  %261 = call i32 (i32, i8*, ...) @log_Printf(i32 %258, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %260)
  store i32 0, i32* %23, align 4
  br label %272

262:                                              ; preds = %254
  %263 = load i32, i32* @RTM_CHANGE, align 4
  store i32 %263, i32* %9, align 4
  %264 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @ID0write(i32 %266, %struct.rtmsg* %14, i32 %267)
  store i32 %268, i32* %17, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %262
  br label %235

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %271, %257
  br label %334

273:                                              ; preds = %250, %245, %235
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @RTM_DELETE, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %301

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @ESRCH, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %292, label %283

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %283
  %289 = load i64, i64* @errno, align 8
  %290 = load i64, i64* @ESRCH, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %288, %277
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* @LogWARN, align 4
  %297 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %298 = call i32 @ncprange_ntoa(%struct.ncprange* %297)
  %299 = call i32 (i32, i8*, ...) @log_Printf(i32 %296, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %295, %292
  br label %333

301:                                              ; preds = %288, %283, %273
  %302 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %322

306:                                              ; preds = %301
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i64, i64* @errno, align 8
  %311 = load i64, i64* @ENETUNREACH, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %321

313:                                              ; preds = %309, %306
  %314 = load i32, i32* @LogWARN, align 4
  %315 = load i8*, i8** %19, align 8
  %316 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %317 = call i32 @ncprange_ntoa(%struct.ncprange* %316)
  %318 = load i64, i64* @errno, align 8
  %319 = call i32 @strerror(i64 %318)
  %320 = call i32 (i32, i8*, ...) @log_Printf(i32 %314, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %315, i32 %317, i32 %319)
  br label %321

321:                                              ; preds = %313, %309
  br label %332

322:                                              ; preds = %301
  %323 = load i32, i32* @LogWARN, align 4
  %324 = load i8*, i8** %19, align 8
  %325 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %326 = call i32 @ncprange_ntoa(%struct.ncprange* %325)
  %327 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %14, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @strerror(i64 %329)
  %331 = call i32 (i32, i8*, ...) @log_Printf(i32 %323, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %324, i32 %326, i32 %330)
  br label %332

332:                                              ; preds = %322, %321
  br label %333

333:                                              ; preds = %332, %300
  br label %334

334:                                              ; preds = %333, %272
  br label %335

335:                                              ; preds = %334, %202
  %336 = load i32, i32* @LogDEBUG, align 4
  %337 = call i64 @log_IsKept(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %362

339:                                              ; preds = %335
  %340 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %341 = zext i32 %340 to i64
  %342 = call i8* @llvm.stacksave()
  store i8* %342, i8** %24, align 8
  %343 = alloca i8, i64 %341, align 16
  store i64 %341, i64* %25, align 8
  %344 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %345 = icmp ne %struct.ncpaddr* %344, null
  br i1 %345, label %346, label %351

346:                                              ; preds = %339
  %347 = trunc i64 %341 to i32
  %348 = load %struct.ncpaddr*, %struct.ncpaddr** %11, align 8
  %349 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %348)
  %350 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %343, i32 %347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %349)
  br label %354

351:                                              ; preds = %339
  %352 = trunc i64 %341 to i32
  %353 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %343, i32 %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %354

354:                                              ; preds = %351, %346
  %355 = load i32, i32* @LogDEBUG, align 4
  %356 = load i32, i32* %17, align 4
  %357 = load i8*, i8** %19, align 8
  %358 = load %struct.ncprange*, %struct.ncprange** %10, align 8
  %359 = call i32 @ncprange_ntoa(%struct.ncprange* %358)
  %360 = call i32 (i32, i8*, ...) @log_Printf(i32 %355, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %356, i8* %357, i32 %359, i8* %343)
  %361 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %361)
  br label %362

362:                                              ; preds = %354, %335
  %363 = load i32, i32* %15, align 4
  %364 = call i32 @close(i32 %363)
  %365 = load i32, i32* %23, align 4
  store i32 %365, i32* %7, align 4
  br label %366

366:                                              ; preds = %362, %161, %143, %46
  %367 = load i32, i32* %7, align 4
  ret i32 %367
}

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @memset(%struct.rtmsg*, i8 signext, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @ncprange_getsa(%struct.ncprange*, %struct.sockaddr_storage*, %struct.sockaddr_storage*) #1

declare dso_local i32 @memcpy_roundup(i8*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ncpaddr_getsa(%struct.ncpaddr*, %struct.sockaddr_storage*) #1

declare dso_local i64 @ncpaddr_isdefault(%struct.ncpaddr*) #1

declare dso_local i32 @ncprange_ishost(%struct.ncprange*) #1

declare dso_local i32 @ID0write(i32, %struct.rtmsg*, i32) #1

declare dso_local i32 @ncprange_ntoa(%struct.ncprange*) #1

declare dso_local i8* @ncpaddr_ntoa(%struct.ncpaddr*) #1

declare dso_local i64 @log_IsKept(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
