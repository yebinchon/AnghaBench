; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_ReceiveDatalink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_ReceiveDatalink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.cmsghdr = type { i32, i64, i64 }
%struct.msghdr = type { i32, i8*, i32, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32*, i64 }
%struct.datalink = type { i32 }

@SEND_MAXFD = common dso_local global i32 0, align 4
@SCATTER_SEGMENTS = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Receiving datalink\0A\00", align 1
@Version = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot determine space required for link\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot allocate space to receive link\0A\00", align 1
@SOL_SOCKET = common dso_local global i64 0, align 8
@LogDEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Expecting %u scatter/gather bytes\0A\00", align 1
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed recvmsg: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed recvmsg: Got %zd, not %u\0A\00", align 1
@SCM_RIGHTS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Recvmsg: no descriptors received !\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Recvmsg: %d descriptor%s received (too few) !\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"Cannot receive datalink, incorrect version (\22%.*s\22, not \22%s\22)\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Failed write: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed write: Got %zd, not %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [84 x i8] c"bundle_ReceiveDatalink: Failed to handle %d auxiliary file descriptors (%d remain)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_ReceiveDatalink(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.cmsghdr*, align 8
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca %struct.datalink*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* @SEND_MAXFD, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 24, %22
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %5, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %26 = load i32, i32* @SCATTER_SEGMENTS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca %struct.iovec, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load i32, i32* @LogPHASE, align 4
  %30 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @Version, align 4
  %32 = call i64 @strlen(i32 %31)
  %33 = add nsw i64 %32, 1
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 0
  store i32* null, i32** %37, align 16
  store i32 1, i32* %7, align 4
  %38 = load i32, i32* @SCATTER_SEGMENTS, align 4
  %39 = call i32 @datalink2iov(i32* null, %struct.iovec* %28, i32* %7, i32 %38, i32* null, i32* null)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @LogERROR, align 4
  %43 = call i32 (i32, i8*, ...) @log_Printf(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %443

44:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %78, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %51
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32* @malloc(i64 %54)
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %57
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 0
  store i32* %55, i32** %59, align 16
  %60 = icmp eq i32* %55, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @LogERROR, align 4
  %63 = call i32 (i32, i8*, ...) @log_Printf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %443

64:                                               ; preds = %49
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %69
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %67, %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %45

81:                                               ; preds = %45
  %82 = bitcast i8* %25 to %struct.cmsghdr*
  store %struct.cmsghdr* %82, %struct.cmsghdr** %15, align 8
  %83 = trunc i64 %23 to i32
  %84 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %85 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i64, i64* @SOL_SOCKET, align 8
  %87 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %88 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %90 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = call i32 @memset(%struct.msghdr* %16, i8 signext 0, i32 48)
  %92 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 5
  store i32* null, i32** %92, align 8
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3
  store %struct.iovec* %28, %struct.iovec** %94, align 8
  %95 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  store i8* %25, i8** %96, align 8
  %97 = trunc i64 %23 to i32
  %98 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = load i32, i32* @LogDEBUG, align 4
  %100 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %101 = getelementptr inbounds %struct.iovec, %struct.iovec* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i32, i8*, ...) @log_Printf(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @MSG_WAITALL, align 4
  %107 = call i32 @recvmsg(i32 %105, %struct.msghdr* %16, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %109 = getelementptr inbounds %struct.iovec, %struct.iovec* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp ne i32 %107, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %81
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* @LogERROR, align 4
  %118 = load i32, i32* @errno, align 4
  %119 = call i32 @strerror(i32 %118)
  %120 = call i32 (i32, i8*, ...) @log_Printf(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %129

121:                                              ; preds = %113
  %122 = load i32, i32* @LogERROR, align 4
  %123 = load i32, i32* %13, align 4
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (i32, i8*, ...) @log_Printf(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %127)
  br label %129

129:                                              ; preds = %121, %116
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %7, align 4
  %133 = icmp ne i32 %131, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %136
  %138 = getelementptr inbounds %struct.iovec, %struct.iovec* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 16
  %140 = call i32 @free(i32* %139)
  br label %130

141:                                              ; preds = %130
  store i32 1, i32* %19, align 4
  br label %443

142:                                              ; preds = %81
  %143 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %144 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SOL_SOCKET, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %150 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SCM_RIGHTS, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148, %142
  %155 = load i32, i32* @LogERROR, align 4
  %156 = call i32 (i32, i8*, ...) @log_Printf(i32 %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %161, %154
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %7, align 4
  %160 = icmp ne i32 %158, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %163
  %165 = getelementptr inbounds %struct.iovec, %struct.iovec* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 16
  %167 = call i32 @free(i32* %166)
  br label %157

168:                                              ; preds = %157
  store i32 1, i32* %19, align 4
  br label %443

169:                                              ; preds = %148
  %170 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %171 = call i64 @CMSG_DATA(%struct.cmsghdr* %170)
  %172 = inttoptr i64 %171 to i32*
  store i32* %172, i32** %10, align 8
  %173 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %174 = ptrtoint %struct.cmsghdr* %173 to i32
  %175 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %176 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %174, %177
  %179 = load i32*, i32** %10, align 8
  %180 = ptrtoint i32* %179 to i32
  %181 = sub nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = udiv i64 %182, 4
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %219

187:                                              ; preds = %169
  %188 = load i32, i32* @LogERROR, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp eq i32 %190, 1
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %194 = call i32 (i32, i8*, ...) @log_Printf(i32 %188, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %189, i8* %193)
  br label %195

195:                                              ; preds = %199, %187
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %11, align 4
  %198 = icmp ne i32 %196, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @close(i32 %204)
  br label %195

206:                                              ; preds = %195
  br label %207

207:                                              ; preds = %211, %206
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %7, align 4
  %210 = icmp ne i32 %208, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %213
  %215 = getelementptr inbounds %struct.iovec, %struct.iovec* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 16
  %217 = call i32 @free(i32* %216)
  br label %207

218:                                              ; preds = %207
  store i32 1, i32* %19, align 4
  br label %443

219:                                              ; preds = %169
  %220 = load i32, i32* @Version, align 4
  %221 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %222 = getelementptr inbounds %struct.iovec, %struct.iovec* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 16
  %224 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %225 = getelementptr inbounds %struct.iovec, %struct.iovec* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @strncmp(i32 %220, i32* %223, i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %265

229:                                              ; preds = %219
  %230 = load i32, i32* @LogWARN, align 4
  %231 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %232 = getelementptr inbounds %struct.iovec, %struct.iovec* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %236 = getelementptr inbounds %struct.iovec, %struct.iovec* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 16
  %238 = bitcast i32* %237 to i8*
  %239 = load i32, i32* @Version, align 4
  %240 = call i32 (i32, i8*, ...) @log_Printf(i32 %230, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 %234, i8* %238, i32 %239)
  br label %241

241:                                              ; preds = %245, %229
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %11, align 4
  %244 = icmp ne i32 %242, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load i32*, i32** %10, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @close(i32 %250)
  br label %241

252:                                              ; preds = %241
  br label %253

253:                                              ; preds = %257, %252
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %7, align 4
  %256 = icmp ne i32 %254, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %259
  %261 = getelementptr inbounds %struct.iovec, %struct.iovec* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 16
  %263 = call i32 @free(i32* %262)
  br label %253

264:                                              ; preds = %253
  store i32 1, i32* %19, align 4
  br label %443

265:                                              ; preds = %219
  %266 = call i32 (...) @getpid()
  store i32 %266, i32* %18, align 4
  %267 = load i32*, i32** %10, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @write(i32 %269, i32* %18, i32 4)
  store i32 %270, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp ne i64 %271, 4
  br i1 %272, label %273, label %310

273:                                              ; preds = %265
  %274 = load i32, i32* %13, align 4
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32, i32* @LogERROR, align 4
  %278 = load i32, i32* @errno, align 4
  %279 = call i32 @strerror(i32 %278)
  %280 = call i32 (i32, i8*, ...) @log_Printf(i32 %277, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %279)
  br label %285

281:                                              ; preds = %273
  %282 = load i32, i32* @LogERROR, align 4
  %283 = load i32, i32* %13, align 4
  %284 = call i32 (i32, i8*, ...) @log_Printf(i32 %282, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %283, i32 4)
  br label %285

285:                                              ; preds = %281, %276
  br label %286

286:                                              ; preds = %290, %285
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %11, align 4
  %289 = icmp ne i32 %287, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load i32*, i32** %10, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @close(i32 %295)
  br label %286

297:                                              ; preds = %286
  br label %298

298:                                              ; preds = %302, %297
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %7, align 4
  %301 = icmp ne i32 %299, 0
  br i1 %301, label %302, label %309

302:                                              ; preds = %298
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %304
  %306 = getelementptr inbounds %struct.iovec, %struct.iovec* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 16
  %308 = call i32 @free(i32* %307)
  br label %298

309:                                              ; preds = %298
  store i32 1, i32* %19, align 4
  br label %443

310:                                              ; preds = %265
  %311 = load i32*, i32** %10, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 1
  %315 = load i32, i32* %7, align 4
  %316 = sub nsw i32 %315, 1
  %317 = call i32 @readv(i32 %313, %struct.iovec* %314, i32 %316)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %8, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %358

320:                                              ; preds = %310
  %321 = load i32, i32* %13, align 4
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load i32, i32* @LogERROR, align 4
  %325 = load i32, i32* @errno, align 4
  %326 = call i32 @strerror(i32 %325)
  %327 = call i32 (i32, i8*, ...) @log_Printf(i32 %324, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %326)
  br label %333

328:                                              ; preds = %320
  %329 = load i32, i32* @LogERROR, align 4
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %8, align 4
  %332 = call i32 (i32, i8*, ...) @log_Printf(i32 %329, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %328, %323
  br label %334

334:                                              ; preds = %338, %333
  %335 = load i32, i32* %11, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %11, align 4
  %337 = icmp ne i32 %335, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %334
  %339 = load i32*, i32** %10, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @close(i32 %343)
  br label %334

345:                                              ; preds = %334
  br label %346

346:                                              ; preds = %350, %345
  %347 = load i32, i32* %7, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %7, align 4
  %349 = icmp ne i32 %347, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %346
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %352
  %354 = getelementptr inbounds %struct.iovec, %struct.iovec* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 16
  %356 = call i32 @free(i32* %355)
  br label %346

357:                                              ; preds = %346
  store i32 1, i32* %19, align 4
  br label %443

358:                                              ; preds = %310
  %359 = load i32*, i32** %10, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @close(i32 %361)
  %363 = load i32, i32* %11, align 4
  store i32 %363, i32* %12, align 4
  %364 = load i32, i32* %11, align 4
  %365 = sub nsw i32 %364, 2
  store i32 %365, i32* %11, align 4
  store i32 1, i32* %7, align 4
  %366 = load %struct.bundle*, %struct.bundle** %3, align 8
  %367 = mul nuw i64 16, %27
  %368 = udiv i64 %367, 16
  %369 = trunc i64 %368 to i32
  %370 = load i32*, i32** %10, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32*, i32** %10, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 2
  %375 = call %struct.datalink* @iov2datalink(%struct.bundle* %366, %struct.iovec* %28, i32* %7, i32 %369, i32 %372, i32* %374, i32* %11)
  store %struct.datalink* %375, %struct.datalink** %17, align 8
  %376 = load %struct.datalink*, %struct.datalink** %17, align 8
  %377 = icmp ne %struct.datalink* %376, null
  br i1 %377, label %378, label %416

378:                                              ; preds = %358
  %379 = load i32, i32* %11, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %405

381:                                              ; preds = %378
  %382 = load i32, i32* @LogERROR, align 4
  %383 = load i32, i32* %12, align 4
  %384 = load i32, i32* %11, align 4
  %385 = call i32 (i32, i8*, ...) @log_Printf(i32 %382, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.13, i64 0, i64 0), i32 %383, i32 %384)
  %386 = load %struct.datalink*, %struct.datalink** %17, align 8
  %387 = call i32 @datalink_Destroy(%struct.datalink* %386)
  br label %388

388:                                              ; preds = %392, %381
  %389 = load i32, i32* %11, align 4
  %390 = add nsw i32 %389, -1
  store i32 %390, i32* %11, align 4
  %391 = icmp ne i32 %389, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %388
  %393 = load i32*, i32** %10, align 8
  %394 = load i32, i32* %12, align 4
  %395 = add nsw i32 %394, -1
  store i32 %395, i32* %12, align 4
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @close(i32 %398)
  br label %388

400:                                              ; preds = %388
  %401 = load i32*, i32** %10, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @close(i32 %403)
  br label %415

405:                                              ; preds = %378
  %406 = load %struct.bundle*, %struct.bundle** %3, align 8
  %407 = load %struct.datalink*, %struct.datalink** %17, align 8
  %408 = call i32 @bundle_DatalinkLinkin(%struct.bundle* %406, %struct.datalink* %407)
  %409 = load %struct.datalink*, %struct.datalink** %17, align 8
  %410 = call i32 @datalink_AuthOk(%struct.datalink* %409)
  %411 = load %struct.datalink*, %struct.datalink** %17, align 8
  %412 = getelementptr inbounds %struct.datalink, %struct.datalink* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @bundle_CalculateBandwidth(i32 %413)
  br label %415

415:                                              ; preds = %405, %400
  br label %438

416:                                              ; preds = %358
  br label %417

417:                                              ; preds = %421, %416
  %418 = load i32, i32* %11, align 4
  %419 = add nsw i32 %418, -1
  store i32 %419, i32* %11, align 4
  %420 = icmp ne i32 %418, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %417
  %422 = load i32*, i32** %10, align 8
  %423 = load i32, i32* %12, align 4
  %424 = add nsw i32 %423, -1
  store i32 %424, i32* %12, align 4
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @close(i32 %427)
  br label %417

429:                                              ; preds = %417
  %430 = load i32*, i32** %10, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @close(i32 %432)
  %434 = load i32*, i32** %10, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 1
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @close(i32 %436)
  br label %438

438:                                              ; preds = %429, %415
  %439 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 0
  %440 = getelementptr inbounds %struct.iovec, %struct.iovec* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 16
  %442 = call i32 @free(i32* %441)
  store i32 0, i32* %19, align 4
  br label %443

443:                                              ; preds = %438, %357, %309, %264, %218, %168, %141, %61, %41
  %444 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %444)
  %445 = load i32, i32* %19, align 4
  switch i32 %445, label %447 [
    i32 0, label %446
    i32 1, label %446
  ]

446:                                              ; preds = %443, %443
  ret void

447:                                              ; preds = %443
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @datalink2iov(i32*, %struct.iovec*, i32*, i32, i32*, i32*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memset(%struct.msghdr*, i8 signext, i32) #2

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @strncmp(i32, i32*, i64) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #2

declare dso_local %struct.datalink* @iov2datalink(%struct.bundle*, %struct.iovec*, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @datalink_Destroy(%struct.datalink*) #2

declare dso_local i32 @bundle_DatalinkLinkin(%struct.bundle*, %struct.datalink*) #2

declare dso_local i32 @datalink_AuthOk(%struct.datalink*) #2

declare dso_local i32 @bundle_CalculateBandwidth(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
