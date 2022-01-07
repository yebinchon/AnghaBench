; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_flock_helper.c_test14.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_flock_helper.c_test14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i32, i32 }
%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"14 - soak test: \00", align 1
@stdout = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i8* null, align 8
@F_RDLCK = common dso_local global i8* null, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%d[%d]: %s [%d .. %d] %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"write lock\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"read lock\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"deadlock\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%d[%d]: %s [%d .. %d] succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%d: short write\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%d: short read\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"%d: byte %d expected %d, got %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"%d[%d]: done\0A\00", align 1
@SUCCEED = common dso_local global i32 0, align 4
@CHILD_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @test14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test14(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [20 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca [128 x i8], align 16
  %16 = alloca [128 x i32], align 16
  %17 = alloca [512 x i8], align 16
  %18 = alloca %struct.flock, align 4
  %19 = alloca %struct.itimerval, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strtol(i8* %31, i32* null, i32 0)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @fflush(i32 %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %45, %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* @F_UNLCK, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %37

48:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %364, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 20
  br i1 %51, label %52, label %367

52:                                               ; preds = %49
  %53 = call i32 (...) @fork()
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %364

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = call i32 (...) @getpid()
  %71 = call i32 @srandom(i32 %70)
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %352, %66
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 50
  br i1 %74, label %75, label %355

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %81, %75
  %77 = call i32 (...) @random()
  %78 = and i32 %77, 127
  store i32 %78, i32* %21, align 4
  %79 = call i32 (...) @random()
  %80 = and i32 %79, 127
  store i32 %80, i32* %22, align 4
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %76, label %85

85:                                               ; preds = %81
  %86 = call i32 (...) @random()
  %87 = and i32 %86, 1
  store i32 %87, i32* %24, align 4
  %88 = call i32 (...) @random()
  %89 = and i32 %88, 1
  store i32 %89, i32* %25, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %21, align 4
  %94 = getelementptr inbounds %struct.flock, %struct.flock* %18, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %23, align 4
  %96 = getelementptr inbounds %struct.flock, %struct.flock* %18, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @SEEK_SET, align 4
  %98 = getelementptr inbounds %struct.flock, %struct.flock* %18, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %24, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %85
  %102 = load i32, i32* %25, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** @F_WRLCK, align 8
  br label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** @F_RDLCK, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = ptrtoint i8* %109 to i32
  %111 = getelementptr inbounds %struct.flock, %struct.flock* %18, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  br label %115

112:                                              ; preds = %85
  %113 = load i32, i32* @F_UNLCK, align 4
  %114 = getelementptr inbounds %struct.flock, %struct.flock* %18, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 3000, i32* %123, align 8
  %124 = load i32, i32* @ITIMER_REAL, align 4
  %125 = call i32 @setitimer(i32 %124, %struct.itimerval* %19, i32* null)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @F_SETLKW, align 4
  %128 = call i64 @fcntl(i32 %126, i32 %127, %struct.flock* %18)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %171

130:                                              ; preds = %115
  %131 = load i64, i64* @errno, align 8
  %132 = load i64, i64* @EDEADLK, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* @errno, align 8
  %136 = load i64, i64* @EINTR, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %134, %130
  %139 = load i64, i64* @verbose, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %138
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %24, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* %25, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  br label %153

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %147
  %154 = phi i8* [ %151, %147 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %152 ]
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i64, i64* @errno, align 8
  %158 = load i64, i64* @EDEADLK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  %162 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %142, i32 512, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144, i8* %154, i32 %155, i32 %156, i8* %161)
  %163 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %165 = call i32 @strlen(i8* %164)
  %166 = call i32 @write(i32 1, i8* %163, i32 %165)
  br label %167

167:                                              ; preds = %153, %138
  br label %352

168:                                              ; preds = %134
  %169 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170, %115
  %172 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  %178 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %19, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load i32, i32* @ITIMER_REAL, align 4
  %181 = call i32 @setitimer(i32 %180, %struct.itimerval* %19, i32* null)
  %182 = load i64, i64* @verbose, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %205

184:                                              ; preds = %171
  %185 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %24, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load i32, i32* %25, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  br label %196

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %190
  %197 = phi i8* [ %194, %190 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %195 ]
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %22, align 4
  %200 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %185, i32 512, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %186, i32 %187, i8* %197, i32 %198, i32 %199)
  %201 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %202 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %203 = call i32 @strlen(i8* %202)
  %204 = call i32 @write(i32 1, i8* %201, i32 %203)
  br label %205

205:                                              ; preds = %196, %171
  %206 = load i32, i32* %24, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %278

208:                                              ; preds = %205
  %209 = load i32, i32* %25, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %247

211:                                              ; preds = %208
  %212 = load i32, i32* %21, align 4
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %223, %211
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %22, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %213
  %218 = load i8*, i8** @F_WRLCK, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %221
  store i32 %219, i32* %222, align 4
  br label %223

223:                                              ; preds = %217
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  br label %213

226:                                              ; preds = %213
  %227 = load i32, i32* %21, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 %228
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %23, align 4
  %232 = call i32 @memset(i8* %229, i32 %230, i32 %231)
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* %21, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 %235
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %21, align 4
  %239 = call i32 @pwrite(i32 %233, i8* %236, i32 %237, i32 %238)
  %240 = load i32, i32* %23, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %226
  %243 = load i32, i32* %10, align 4
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %243)
  %245 = call i32 @exit(i32 1) #3
  unreachable

246:                                              ; preds = %226
  br label %277

247:                                              ; preds = %208
  %248 = load i32, i32* %21, align 4
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %259, %247
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %22, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load i8*, i8** @F_RDLCK, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %257
  store i32 %255, i32* %258, align 4
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %249

262:                                              ; preds = %249
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* %21, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 %265
  %267 = load i32, i32* %23, align 4
  %268 = load i32, i32* %21, align 4
  %269 = call i32 @pread(i32 %263, i8* %266, i32 %267, i32 %268)
  %270 = load i32, i32* %23, align 4
  %271 = icmp ne i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %262
  %273 = load i32, i32* %10, align 4
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %273)
  %275 = call i32 @exit(i32 1) #3
  unreachable

276:                                              ; preds = %262
  br label %277

277:                                              ; preds = %276, %246
  br label %293

278:                                              ; preds = %205
  %279 = load i32, i32* %21, align 4
  store i32 %279, i32* %8, align 4
  br label %280

280:                                              ; preds = %289, %278
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %22, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = load i32, i32* @F_UNLCK, align 4
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %287
  store i32 %285, i32* %288, align 4
  br label %289

289:                                              ; preds = %284
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %8, align 4
  br label %280

292:                                              ; preds = %280
  br label %293

293:                                              ; preds = %292, %277
  %294 = call i32 @usleep(i32 1000)
  %295 = load i32, i32* %5, align 4
  %296 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %297 = call i32 @pread(i32 %295, i8* %296, i32 128, i32 0)
  %298 = sext i32 %297 to i64
  %299 = icmp ne i64 %298, 128
  br i1 %299, label %300, label %304

300:                                              ; preds = %293
  %301 = load i32, i32* %10, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %301)
  %303 = call i32 @exit(i32 1) #3
  unreachable

304:                                              ; preds = %293
  store i32 0, i32* %8, align 4
  br label %305

305:                                              ; preds = %348, %304
  %306 = load i32, i32* %8, align 4
  %307 = icmp slt i32 %306, 128
  br i1 %307, label %308, label %351

308:                                              ; preds = %305
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @F_UNLCK, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %347

315:                                              ; preds = %308
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp ne i32 %320, %325
  br i1 %326, label %327, label %347

327:                                              ; preds = %315
  %328 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %328, i32 512, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %329, i32 %330, i32 %335, i32 %340)
  %342 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %343 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %344 = call i32 @strlen(i8* %343)
  %345 = call i32 @write(i32 1, i8* %342, i32 %344)
  %346 = call i32 @exit(i32 1) #3
  unreachable

347:                                              ; preds = %315, %308
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %305

351:                                              ; preds = %305
  br label %352

352:                                              ; preds = %351, %167
  %353 = load i32, i32* %9, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %9, align 4
  br label %72

355:                                              ; preds = %72
  %356 = load i64, i64* @verbose, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* %9, align 4
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %358, %355
  %363 = call i32 @exit(i32 0) #3
  unreachable

364:                                              ; preds = %61
  %365 = load i32, i32* %8, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %8, align 4
  br label %49

367:                                              ; preds = %49
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %368

368:                                              ; preds = %381, %367
  %369 = load i32, i32* %8, align 4
  %370 = icmp slt i32 %369, 20
  br i1 %370, label %371, label %384

371:                                              ; preds = %368
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i64 @safe_waitpid(i32 %375)
  %377 = load i32, i32* %20, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %378, %376
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %20, align 4
  br label %381

381:                                              ; preds = %371
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %8, align 4
  br label %368

384:                                              ; preds = %368
  %385 = load i32, i32* %20, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %384
  %388 = load i32, i32* %20, align 4
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i32
  %391 = call i32 @FAIL(i32 %390)
  br label %392

392:                                              ; preds = %387, %384
  %393 = load i32, i32* @SUCCEED, align 4
  %394 = load i32, i32* %4, align 4
  ret i32 %394
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i64 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @safe_waitpid(i32) #1

declare dso_local i32 @FAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
