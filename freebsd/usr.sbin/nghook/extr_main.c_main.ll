; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nghook/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nghook/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngm_connect = type { i32, i32, i32 }

@DEFAULT_HOOKNAME = common dso_local global i8* null, align 8
@msgs = common dso_local global i32* null, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"aedlm:nsS\00", align 1
@optarg = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@outfd = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@infd = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"conflicting options\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't get sockets\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@NG_SOCK_HOOK_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_CONNECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"can't connect to node\00", align 1
@stdin = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"read(hook)\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"read EOF from hook?!\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"write(stdout)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"stdout: read %d, wrote %d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"write(hook)\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"read(stdin)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"EOF(stdin)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ngm_connect, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %24 = load i8*, i8** @DEFAULT_HOOKNAME, align 8
  store i8* %24, i8** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = call i32* (...) @sl_init()
  store i32* %25, i32** @msgs, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = call i32 (i32, i8*, ...) @err(i32 %28, i8* null)
  br label %30

30:                                               ; preds = %27, %2
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @getopt(i32 %32, i8** %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %15, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  switch i32 %37, label %60 [
    i32 97, label %38
    i32 100, label %39
    i32 101, label %43
    i32 108, label %44
    i32 110, label %45
    i32 109, label %46
    i32 115, label %55
    i32 83, label %57
    i32 63, label %59
  ]

38:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %62

39:                                               ; preds = %36
  %40 = call i32 @NgSetDebug(i32 -1)
  %41 = add nsw i32 %40, 1
  %42 = call i32 @NgSetDebug(i32 %41)
  br label %62

43:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %62

44:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %62

45:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  br label %62

46:                                               ; preds = %36
  %47 = load i32*, i32** @msgs, align 8
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 @sl_add(i32* %47, i32 %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EX_OSERR, align 4
  %53 = call i32 (i32, i8*, ...) @err(i32 %52, i8* null)
  br label %54

54:                                               ; preds = %51, %46
  br label %62

55:                                               ; preds = %36
  %56 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %56, i32* @outfd, align 4
  br label %62

57:                                               ; preds = %36
  %58 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %58, i32* @infd, align 4
  br label %62

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %36, %59
  %61 = call i32 (...) @Usage()
  br label %62

62:                                               ; preds = %60, %57, %55, %54, %45, %44, %43, %39, %38
  br label %31

63:                                               ; preds = %31
  %64 = load i64, i64* @optind, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* @optind, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %63
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 (...) @Usage()
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @Usage()
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %7, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %8, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  store i8** %97, i8*** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, 2
  store i32 %99, i32* %4, align 4
  br label %113

100:                                              ; preds = %63
  %101 = load i32, i32* %4, align 4
  switch i32 %101, label %110 [
    i32 2, label %102
    i32 1, label %106
  ]

102:                                              ; preds = %100
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %8, align 8
  br label %106

106:                                              ; preds = %100, %102
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %7, align 8
  br label %112

110:                                              ; preds = %100
  %111 = call i32 (...) @Usage()
  br label %112

112:                                              ; preds = %110, %106
  br label %113

113:                                              ; preds = %112, %89
  %114 = call i64 @NgMkSockNode(i32* null, i32* %9, i32* %10)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @EX_OSERR, align 4
  %118 = call i32 (i32, i8*, ...) @errx(i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  %120 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %6, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %121, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  %124 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %6, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** @NG_SOCK_HOOK_NAME, align 8
  %127 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %125, i32 4, i8* %126)
  %128 = getelementptr inbounds %struct.ngm_connect, %struct.ngm_connect* %6, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %129, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %134 = load i32, i32* @NGM_CONNECT, align 4
  %135 = call i64 @NgSendMsg(i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %134, %struct.ngm_connect* %6, i32 12)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %119
  %138 = load i32, i32* @EX_OSERR, align 4
  %139 = call i32 (i32, i8*, ...) @errx(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %119
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %140
  %144 = call i32 @close(i32 0)
  %145 = call i32 @close(i32 1)
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @dup2(i32 %149, i32 0)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @dup2(i32 %152, i32 1)
  %154 = load i32, i32* %9, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @send_msgs(i32 %154, i8* %155)
  %157 = load i8**, i8*** %5, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i8**, i8*** %5, align 8
  %161 = call i32 @execv(i8* %159, i8** %160)
  %162 = load i32, i32* @EX_OSERR, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i32, i8*, ...) @err(i32 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %165)
  br label %171

167:                                              ; preds = %140
  %168 = load i32, i32* %9, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @send_msgs(i32 %168, i8* %169)
  br label %171

171:                                              ; preds = %167, %151
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* @stdin, align 4
  %176 = call i32 @fclose(i32 %175)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %290
  %179 = call i32 @FD_ZERO(i32* %16)
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* @infd, align 4
  %184 = call i32 @FD_SET(i32 %183, i32* %16)
  br label %185

185:                                              ; preds = %182, %178
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @FD_SET(i32 %186, i32* %16)
  %188 = load i32, i32* @FD_SETSIZE, align 4
  %189 = call i64 @select(i32 %188, i32* %16, i32* null, i32* null, i32* null)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* @EX_OSERR, align 4
  %193 = call i32 (i32, i8*, ...) @err(i32 %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %185
  %195 = load i32, i32* %10, align 4
  %196 = call i64 @FD_ISSET(i32 %195, i32* %16)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %257

198:                                              ; preds = %194
  %199 = load i32, i32* @BUF_SIZE, align 4
  %200 = zext i32 %199 to i64
  %201 = call i8* @llvm.stacksave()
  store i8* %201, i8** %17, align 8
  %202 = alloca i8, i64 %200, align 16
  store i64 %200, i64* %18, align 8
  %203 = load i32, i32* %10, align 4
  %204 = trunc i64 %200 to i32
  %205 = call i32 @NgRecvData(i32 %203, i8* %202, i32 %204, i32* null)
  store i32 %205, i32* %19, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %198
  %208 = load i32, i32* @EX_OSERR, align 4
  %209 = call i32 (i32, i8*, ...) @err(i32 %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %198
  %211 = load i32, i32* %19, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* @EX_OSERR, align 4
  %215 = call i32 (i32, i8*, ...) @errx(i32 %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = bitcast i8* %202 to i32*
  %221 = load i32, i32* %19, align 4
  %222 = call i32 @WriteAscii(i32* %220, i32 %221)
  br label %242

223:                                              ; preds = %216
  %224 = load i32, i32* @outfd, align 4
  %225 = load i32, i32* %19, align 4
  %226 = call i32 @write(i32 %224, i8* %202, i32 %225)
  store i32 %226, i32* %20, align 4
  %227 = load i32, i32* %19, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %223
  %230 = load i32, i32* %20, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* @EX_OSERR, align 4
  %234 = call i32 (i32, i8*, ...) @err(i32 %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %240

235:                                              ; preds = %229
  %236 = load i32, i32* @EX_OSERR, align 4
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %20, align 4
  %239 = call i32 (i32, i8*, ...) @errx(i32 %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %232
  br label %241

241:                                              ; preds = %240, %223
  br label %242

242:                                              ; preds = %241, %219
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %242
  %246 = load i32, i32* %10, align 4
  %247 = load i8*, i8** @NG_SOCK_HOOK_NAME, align 8
  %248 = load i32, i32* %19, align 4
  %249 = call i64 @NgSendData(i32 %246, i8* %247, i8* %202, i32 %248)
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load i32, i32* @EX_OSERR, align 4
  %253 = call i32 (i32, i8*, ...) @err(i32 %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %245
  br label %255

255:                                              ; preds = %254, %242
  %256 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %256)
  br label %257

257:                                              ; preds = %255, %194
  %258 = load i32, i32* @infd, align 4
  %259 = call i64 @FD_ISSET(i32 %258, i32* %16)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %290

261:                                              ; preds = %257
  %262 = load i32, i32* @BUF_SIZE, align 4
  %263 = zext i32 %262 to i64
  %264 = call i8* @llvm.stacksave()
  store i8* %264, i8** %21, align 8
  %265 = alloca i8, i64 %263, align 16
  store i64 %263, i64* %22, align 8
  %266 = load i32, i32* @infd, align 4
  %267 = trunc i64 %263 to i32
  %268 = call i32 @read(i32 %266, i8* %265, i32 %267)
  store i32 %268, i32* %23, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %261
  %271 = load i32, i32* @EX_OSERR, align 4
  %272 = call i32 (i32, i8*, ...) @err(i32 %271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %261
  %274 = load i32, i32* %23, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* @EX_OSERR, align 4
  %278 = call i32 (i32, i8*, ...) @errx(i32 %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %10, align 4
  %281 = load i8*, i8** @NG_SOCK_HOOK_NAME, align 8
  %282 = load i32, i32* %23, align 4
  %283 = call i64 @NgSendData(i32 %280, i8* %281, i8* %265, i32 %282)
  %284 = icmp slt i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i32, i32* @EX_OSERR, align 4
  %287 = call i32 (i32, i8*, ...) @err(i32 %286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %279
  %289 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %289)
  br label %290

290:                                              ; preds = %288, %257
  br label %178
}

declare dso_local i32* @sl_init(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @NgSetDebug(i32) #1

declare dso_local i32 @sl_add(i32*, i32) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @NgMkSockNode(i32*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, %struct.ngm_connect*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @send_msgs(i32, i8*) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NgRecvData(i32, i8*, i32, i32*) #1

declare dso_local i32 @WriteAscii(i32*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @NgSendData(i32, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
