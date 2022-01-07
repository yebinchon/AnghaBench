; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/accept_fd_leak/extr_accept_fd_leak.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/accept_fd_leak/extr_accept_fd_leak.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"1..2\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Non-sequential fd allocation\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"socket: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@BIND_ATTEMPTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"bind with %d failed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Bail out!\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"listen: %s\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"ioctl(F_GETFL): %s\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"ioctl(F_SETFL): %s\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to set O_NONBLOCK (i=0x%x)\0A\00", align 1
@LOOPS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"accept succeeded\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"accept: %s\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"not ok 1 - (%d, %d, %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ok 1\0A\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@child_died = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@NUM_ATTEMPTS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"connect: %s\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to clear O_NONBLOCK (i=0x%x)\0A\00", align 1
@quit = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"waitpid: %s\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"child process died\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"not ok 2 - (%d, %d, %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"ok 2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = call i32 @dup(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @STDIN_FILENO, align 4
  %16 = call i32 @dup(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i32, i32* @PF_INET, align 4
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = call i32 @socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @strerror(i64 %30)
  %32 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = call i32 @bzero(%struct.sockaddr_in* %2, i32 32)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 32, i32* %35, align 8
  %36 = load i8*, i8** @AF_INET, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @INADDR_LOOPBACK, align 4
  %39 = call i8* @htonl(i32 %38)
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = call i32 (...) @srandomdev()
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %64, %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BIND_ATTEMPTS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = call i64 (...) @random()
  %49 = trunc i64 %48 to i32
  %50 = srem i32 %49, 65535
  %51 = call i32 @MAX(i32 %50, i32 1025)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %57 = call i64 @bind(i32 %55, %struct.sockaddr* %56, i32 32)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %67

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = call i32 @usleep(i32 1000)
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %43

67:                                               ; preds = %59, %43
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @BIND_ATTEMPTS, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @listen(i32 %75, i32 -1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* @errno, align 8
  %80 = call i32 @strerror(i64 %79)
  %81 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @F_GETFL, align 4
  %85 = call i64 (i32, i32, ...) @fcntl(i32 %83, i32 %84)
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i64, i64* @errno, align 8
  %91 = call i32 @strerror(i64 %90)
  %92 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* @O_NONBLOCK, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @F_SETFL, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i64 (i32, i32, ...) @fcntl(i32 %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i64, i64* @errno, align 8
  %104 = call i32 @strerror(i64 %103)
  %105 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %93
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @F_GETFL, align 4
  %109 = call i64 (i32, i32, ...) @fcntl(i32 %107, i32 %108)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i64, i64* @errno, align 8
  %115 = call i32 @strerror(i64 %114)
  %116 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @O_NONBLOCK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @O_NONBLOCK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %117
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %147, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @LOOPS, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %127
  store i32 32, i32* %3, align 4
  %132 = load i32, i32* %10, align 4
  %133 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %134 = call i32 @accept(i32 %132, %struct.sockaddr* %133, i32* %3)
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @EAGAIN, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, i64* @errno, align 8
  %144 = call i32 @strerror(i64 %143)
  %145 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %127

150:                                              ; preds = %127
  %151 = load i32, i32* @STDIN_FILENO, align 4
  %152 = call i32 @dup(i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 2
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %158, i32 %159, i32 %160)
  br label %164

162:                                              ; preds = %150
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %157
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @close(i32 %165)
  %167 = load i32, i32* @SIGCHLD, align 4
  %168 = load i32, i32* @child_died, align 4
  %169 = call i32 @signal(i32 %167, i32 %168)
  %170 = call i64 (...) @fork()
  store i64 %170, i64* %4, align 8
  %171 = load i64, i64* %4, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %164
  %174 = load i64, i64* @errno, align 8
  %175 = call i32 @strerror(i64 %174)
  %176 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %173, %164
  %178 = load i64, i64* %4, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %229

180:                                              ; preds = %177
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @close(i32 %181)
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @close(i32 %183)
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @close(i32 %185)
  %187 = call i32 @bzero(%struct.sockaddr_in* %2, i32 32)
  %188 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 32, i32* %188, align 8
  %189 = load i8*, i8** @AF_INET, align 8
  %190 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  store i8* %189, i8** %190, align 8
  %191 = load i32, i32* @INADDR_LOOPBACK, align 4
  %192 = call i8* @htonl(i32 %191)
  %193 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i8* @htons(i32 %195)
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 1
  store i8* %196, i8** %197, align 8
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %224, %180
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @NUM_ATTEMPTS, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %198
  %203 = load i32, i32* @PF_INET, align 4
  %204 = load i32, i32* @SOCK_STREAM, align 4
  %205 = call i32 @socket(i32 %203, i32 %204, i32 0)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i64, i64* @errno, align 8
  %210 = call i32 @strerror(i64 %209)
  %211 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %208, %202
  %213 = load i32, i32* %10, align 4
  %214 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %215 = call i64 @connect(i32 %213, %struct.sockaddr* %214, i32 32)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i64, i64* @errno, align 8
  %219 = call i32 @strerror(i64 %218)
  %220 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %217, %212
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @close(i32 %222)
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %198

227:                                              ; preds = %198
  %228 = call i32 @_exit(i32 0) #3
  unreachable

229:                                              ; preds = %177
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @F_GETFL, align 4
  %232 = call i64 (i32, i32, ...) @fcntl(i32 %230, i32 %231)
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load i64, i64* @errno, align 8
  %238 = call i32 @strerror(i64 %237)
  %239 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %236, %229
  %241 = load i32, i32* @O_NONBLOCK, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %8, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @F_SETFL, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i64 (i32, i32, ...) @fcntl(i32 %245, i32 %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %240
  %251 = load i64, i64* @errno, align 8
  %252 = call i32 @strerror(i64 %251)
  %253 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %250, %240
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @F_GETFL, align 4
  %257 = call i64 (i32, i32, ...) @fcntl(i32 %255, i32 %256)
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %265

261:                                              ; preds = %254
  %262 = load i64, i64* @errno, align 8
  %263 = call i32 @strerror(i64 %262)
  %264 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %261, %254
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @O_NONBLOCK, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i32, i32* %8, align 4
  %272 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %270, %265
  store i32 0, i32* %8, align 4
  br label %274

274:                                              ; preds = %298, %273
  %275 = load i32, i32* @quit, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @NUM_ATTEMPTS, align 4
  %280 = icmp slt i32 %278, %279
  br label %281

281:                                              ; preds = %277, %274
  %282 = phi i1 [ false, %274 ], [ %280, %277 ]
  br i1 %282, label %283, label %301

283:                                              ; preds = %281
  store i32 32, i32* %3, align 4
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @accept(i32 %284, %struct.sockaddr* inttoptr (i64 256 to %struct.sockaddr*), i32* %3)
  %286 = icmp ne i32 %285, -1
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %283
  %290 = load i64, i64* @errno, align 8
  %291 = load i64, i64* @EFAULT, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = load i64, i64* @errno, align 8
  %295 = call i32 @strerror(i64 %294)
  %296 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %293, %289
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %274

301:                                              ; preds = %281
  %302 = load i64, i64* %4, align 8
  %303 = call i64 @waitpid(i64 %302, i32* %11, i32 0)
  %304 = icmp slt i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = load i64, i64* @errno, align 8
  %307 = call i32 @strerror(i64 %306)
  %308 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %305, %301
  %310 = load i32, i32* %11, align 4
  %311 = call i32 @WIFEXITED(i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load i32, i32* %11, align 4
  %315 = call i64 @WEXITSTATUS(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %313, %309
  %318 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %313
  %320 = load i32, i32* @STDIN_FILENO, align 4
  %321 = call i32 @dup(i32 %320)
  store i32 %321, i32* %7, align 4
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %6, align 4
  %324 = add nsw i32 %323, 2
  %325 = icmp ne i32 %322, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %319
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* %7, align 4
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %327, i32 %328, i32 %329)
  br label %333

331:                                              ; preds = %319
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %333

333:                                              ; preds = %331, %326
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @srandomdev(...) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @random(...) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
