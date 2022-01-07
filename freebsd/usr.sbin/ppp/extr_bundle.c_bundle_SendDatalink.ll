; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_SendDatalink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_SendDatalink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, i32, i32 }
%struct.sockaddr_un = type { i32 }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.msghdr = type { i32, i8*, i32, i64, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32, i64 }

@SEND_MAXFD = common dso_local global i32 0, align 4
@SCATTER_SEGMENTS = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Transmitting datalink %s\0A\00", align 1
@Version = common dso_local global i8* null, align 8
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SCM_RIGHTS = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"setsockopt(SO_RCVBUF, %d): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Sending %d descriptor%s and %u bytes in scatter/gather array\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed sendmsg: %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: Failed initial sendmsg: Only sent %zd of %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Received confirmation from pid %ld\0A\00", align 1
@UU_LOCK_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"uu_lock_txfr: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Transmitting link (%d bytes)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%s: Failed writev: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: Failed writev: Wrote %zd of %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"%s: Failed socketpair read: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"%s: Failed socketpair read: Got %zd of %d\0A\00", align 1
@OPT_KEEPSESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_SendDatalink(%struct.datalink* %0, i32 %1, %struct.sockaddr_un* %2) #0 {
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_un*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cmsghdr*, align 8
  %12 = alloca %struct.msghdr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sockaddr_un* %2, %struct.sockaddr_un** %6, align 8
  %24 = load i32, i32* @SEND_MAXFD, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @CMSG_SPACE(i32 %27)
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %7, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  %32 = load i32, i32* @SCATTER_SEGMENTS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.iovec, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %35 = load i32, i32* @SEND_MAXFD, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %18, align 8
  %38 = load i32, i32* @LogPHASE, align 4
  %39 = load %struct.datalink*, %struct.datalink** %4, align 8
  %40 = getelementptr inbounds %struct.datalink, %struct.datalink* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.datalink*, %struct.datalink** %4, align 8
  %44 = getelementptr inbounds %struct.datalink, %struct.datalink* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @physical_LockedDevice(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %3
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = add nsw i64 %51, 1
  %53 = call i8* @alloca(i64 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strcpy(i8* %54, i8* %55)
  br label %58

57:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.datalink*, %struct.datalink** %4, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.datalink*, %struct.datalink** %4, align 8
  %63 = call i32 @bundle_LinkClosed(i32 %61, %struct.datalink* %62)
  %64 = load %struct.datalink*, %struct.datalink** %4, align 8
  %65 = getelementptr inbounds %struct.datalink, %struct.datalink* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.datalink*, %struct.datalink** %4, align 8
  %68 = call i32 @bundle_DatalinkLinkout(i32 %66, %struct.datalink* %67)
  %69 = load i8*, i8** @Version, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add nsw i64 %70, 1
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 0
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i8*, i8** @Version, align 8
  %75 = call i32 @strdup(i8* %74)
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 0
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 16
  store i32 1, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %78 = load %struct.datalink*, %struct.datalink** %4, align 8
  %79 = load i32, i32* @SCATTER_SEGMENTS, align 4
  %80 = getelementptr inbounds i32, i32* %37, i64 2
  %81 = call i32 @datalink2iov(%struct.datalink* %78, %struct.iovec* %34, i32* %14, i32 %79, i32* %80, i32* %19)
  %82 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %81, i32* %82, align 16
  %83 = getelementptr inbounds i32, i32* %37, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %348

86:                                               ; preds = %58
  %87 = load i32, i32* @AF_UNIX, align 4
  %88 = load i32, i32* @SOCK_STREAM, align 4
  %89 = load i32, i32* @PF_UNSPEC, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %91 = call i32 @socketpair(i32 %87, i32 %88, i32 %89, i32* %90)
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %348

93:                                               ; preds = %86
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %19, align 4
  %99 = call i32 @memset(%struct.msghdr* %12, i8 signext 0, i32 56)
  %100 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 6
  store i32* null, i32** %100, align 8
  %101 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4
  store %struct.iovec* %34, %struct.iovec** %103, align 8
  %104 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 1
  store i8* %31, i8** %104, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @CMSG_SPACE(i32 %108)
  %110 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 2
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = bitcast i8* %31 to %struct.cmsghdr*
  store %struct.cmsghdr* %112, %struct.cmsghdr** %11, align 8
  %113 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %116 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @SOL_SOCKET, align 4
  %118 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %119 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @SCM_RIGHTS, align 4
  %121 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %122 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %138, %93
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %37, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %133 = call i64 @CMSG_DATA(%struct.cmsghdr* %132)
  %134 = inttoptr i64 %133 to i32*
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %123

141:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %148
  %150 = getelementptr inbounds %struct.iovec, %struct.iovec* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %142

159:                                              ; preds = %142
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SOL_SOCKET, align 4
  %163 = load i32, i32* @SO_SNDBUF, align 4
  %164 = call i32 @setsockopt(i32 %161, i32 %162, i32 %163, i32* %16, i32 4)
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i32, i32* @LogERROR, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* @errno, align 4
  %170 = call i32 @strerror(i32 %169)
  %171 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %170)
  br label %172

172:                                              ; preds = %166, %159
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SOL_SOCKET, align 4
  %176 = load i32, i32* @SO_RCVBUF, align 4
  %177 = call i32 @setsockopt(i32 %174, i32 %175, i32 %176, i32* %16, i32 4)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @LogERROR, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @errno, align 4
  %183 = call i32 @strerror(i32 %182)
  %184 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %179, %172
  %186 = load i32, i32* @LogDEBUG, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = icmp eq i32 %188, 1
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %192 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 0
  %193 = getelementptr inbounds %struct.iovec, %struct.iovec* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %186, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %187, i8* %191, i32 %195)
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @sendmsg(i32 %197, %struct.msghdr* %12, i32 0)
  store i32 %198, i32* %21, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %208

200:                                              ; preds = %185
  %201 = load i32, i32* @LogERROR, align 4
  %202 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %203 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @errno, align 4
  %206 = call i32 @strerror(i32 %205)
  %207 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %206)
  br label %304

208:                                              ; preds = %185
  %209 = load i32, i32* %21, align 4
  %210 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 0
  %211 = getelementptr inbounds %struct.iovec, %struct.iovec* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = icmp ne i32 %209, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %208
  %216 = load i32, i32* @LogERROR, align 4
  %217 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %218 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %21, align 4
  %221 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 0
  %222 = getelementptr inbounds %struct.iovec, %struct.iovec* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %216, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %219, i32 %220, i32 %224)
  br label %303

226:                                              ; preds = %208
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @read(i32 %228, i64* %22, i32 8)
  store i32 %229, i32* %21, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp eq i64 %230, 8
  br i1 %231, label %232, label %283

232:                                              ; preds = %226
  %233 = load i32, i32* @LogDEBUG, align 4
  %234 = load i64, i64* %22, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %233, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %235)
  %237 = load i8*, i8** %10, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %250

239:                                              ; preds = %232
  %240 = load i8*, i8** %10, align 8
  %241 = load i64, i64* %22, align 8
  %242 = call i32 @ID0uu_lock_txfr(i8* %240, i64 %241)
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* @UU_LOCK_OK, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = load i32, i32* @LogERROR, align 4
  %247 = load i32, i32* %23, align 4
  %248 = call i32 @uu_lockerr(i32 %247)
  %249 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %246, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %245, %239, %232
  %251 = load i32, i32* @LogDEBUG, align 4
  %252 = load i32, i32* %16, align 4
  %253 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %251, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %252)
  %254 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 1
  %257 = load i32, i32* %14, align 4
  %258 = sub nsw i32 %257, 1
  %259 = call i32 @writev(i32 %255, %struct.iovec* %256, i32 %258)
  store i32 %259, i32* %21, align 4
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %282

262:                                              ; preds = %250
  %263 = load i32, i32* %21, align 4
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i32, i32* @LogERROR, align 4
  %267 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %268 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @errno, align 4
  %271 = call i32 @strerror(i32 %270)
  %272 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %266, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %269, i32 %271)
  br label %281

273:                                              ; preds = %262
  %274 = load i32, i32* @LogERROR, align 4
  %275 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %276 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %16, align 4
  %280 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %274, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %273, %265
  br label %282

282:                                              ; preds = %281, %250
  br label %302

283:                                              ; preds = %226
  %284 = load i32, i32* %21, align 4
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load i32, i32* @LogERROR, align 4
  %288 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %289 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @errno, align 4
  %292 = call i32 @strerror(i32 %291)
  %293 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %287, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %290, i32 %292)
  br label %301

294:                                              ; preds = %283
  %295 = load i32, i32* @LogERROR, align 4
  %296 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %297 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %21, align 4
  %300 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %295, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %298, i32 %299, i32 8)
  br label %301

301:                                              ; preds = %294, %286
  br label %302

302:                                              ; preds = %301, %282
  br label %303

303:                                              ; preds = %302, %215
  br label %304

304:                                              ; preds = %303, %200
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @close(i32 %306)
  %308 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @close(i32 %309)
  %311 = load %struct.datalink*, %struct.datalink** %4, align 8
  %312 = getelementptr inbounds %struct.datalink, %struct.datalink* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @OPT_KEEPSESSION, align 4
  %315 = call i64 @Enabled(i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %323, label %317

317:                                              ; preds = %304
  %318 = getelementptr inbounds i32, i32* %37, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = call i64 @tcgetpgrp(i32 %319)
  %321 = call i64 (...) @getpgrp()
  %322 = icmp eq i64 %320, %321
  br label %323

323:                                              ; preds = %317, %304
  %324 = phi i1 [ true, %304 ], [ %322, %317 ]
  %325 = zext i1 %324 to i32
  store i32 %325, i32* %17, align 4
  br label %326

326:                                              ; preds = %329, %323
  %327 = load i32, i32* %19, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %326
  %330 = load i32, i32* %19, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %19, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %37, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @close(i32 %334)
  br label %326

336:                                              ; preds = %326
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %336
  %340 = load %struct.datalink*, %struct.datalink** %4, align 8
  %341 = getelementptr inbounds %struct.datalink, %struct.datalink* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %21, align 4
  %344 = icmp ne i32 %343, -1
  %345 = zext i1 %344 to i32
  %346 = call i32 @bundle_setsid(i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %339, %336
  br label %348

348:                                              ; preds = %347, %86, %58
  %349 = load i32, i32* %5, align 4
  %350 = call i32 @close(i32 %349)
  br label %351

351:                                              ; preds = %355, %348
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %14, align 4
  %354 = icmp ne i32 %352, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %351
  %356 = load i32, i32* %14, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %357
  %359 = getelementptr inbounds %struct.iovec, %struct.iovec* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 16
  %361 = call i32 @free(i32 %360)
  br label %351

362:                                              ; preds = %351
  %363 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %363)
  ret void
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i8* @physical_LockedDevice(i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @bundle_LinkClosed(i32, %struct.datalink*) #1

declare dso_local i32 @bundle_DatalinkLinkout(i32, %struct.datalink*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @datalink2iov(%struct.datalink*, %struct.iovec*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.msghdr*, i8 signext, i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @ID0uu_lock_txfr(i8*, i64) #1

declare dso_local i32 @uu_lockerr(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @Enabled(i32, i32) #1

declare dso_local i64 @tcgetpgrp(i32) #1

declare dso_local i64 @getpgrp(...) #1

declare dso_local i32 @bundle_setsid(i32, i32) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
