; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_client.c_tcpp_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_client.c_tcpp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@CPUSTATES = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't use -b less than %zu\0A\00", align 1
@payload_len = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@pid_list = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"malloc pid_list\00", align 1
@SYSCTLNAME_CPTIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"sysctlbyname: %s\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Too many errors\00", align 1
@hflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [61 x i8] c"bytes,seconds,conn/s,Gb/s,user%%,nice%%,sys%%,intr%%,idle%%\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%jd,\00", align 1
@tflag = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"%jd.%09jd,\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%f,\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.02f,\00", align 1
@CP_USER = common dso_local global i64 0, align 8
@CP_NICE = common dso_local global i64 0, align 8
@CP_SYS = common dso_local global i64 0, align 8
@CP_INTR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"%0.02f\00", align 1
@CP_IDLE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpp_client() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @CPUSTATES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @CPUSTATES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i32, i32* @bflag, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 4)
  br label %24

24:                                               ; preds = %22, %0
  %25 = load i32, i32* @bflag, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @payload_len, align 4
  %29 = load i32, i32* @pflag, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64* @malloc(i32 %32)
  store i64* %33, i64** @pid_list, align 8
  %34 = load i64*, i64** @pid_list, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %24
  %39 = load i64*, i64** @pid_list, align 8
  %40 = load i32, i32* @pflag, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @bzero(i64* %39, i32 %43)
  %45 = mul nuw i64 8, %13
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* @SYSCTLNAME_CPTIME, align 4
  %47 = bitcast i64* %15 to i64**
  %48 = call i64 @sysctlbyname(i32 %46, i64** %47, i64* %7, i32* null, i32 0)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @SYSCTLNAME_CPTIME, align 4
  %52 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32, i32* @CLOCK_REALTIME, align 4
  %55 = call i64 @clock_gettime(i32 %54, %struct.timespec* %1)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %108, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @pflag, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %60
  %65 = call i64 (...) @fork()
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %90, %68
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @pflag, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i64*, i64** @pid_list, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i64*, i64** @pid_list, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @SIGKILL, align 4
  %88 = call i32 @kill(i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %70

93:                                               ; preds = %70
  %94 = call i32 @exit(i32 -1) #4
  unreachable

95:                                               ; preds = %64
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @tcpp_client_worker(i32 %99)
  %101 = call i32 @exit(i32 0) #4
  unreachable

102:                                              ; preds = %95
  %103 = load i64, i64* %8, align 8
  %104 = load i64*, i64** @pid_list, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %103, i64* %107, align 8
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %60

111:                                              ; preds = %60
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %145, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @pflag, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load i64*, i64** @pid_list, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %137, %123
  %125 = load i64*, i64** @pid_list, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @waitpid(i64 %129, i32* %11, i32 0)
  %131 = load i64*, i64** @pid_list, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  br label %124

138:                                              ; preds = %124
  %139 = load i32, i32* %11, align 4
  %140 = call i64 @WEXITSTATUS(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %138
  br label %144

144:                                              ; preds = %143, %116
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %112

148:                                              ; preds = %112
  %149 = load i32, i32* @CLOCK_REALTIME, align 4
  %150 = call i64 @clock_gettime(i32 %149, %struct.timespec* %2)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %148
  %155 = mul nuw i64 8, %17
  store i64 %155, i64* %7, align 8
  %156 = load i32, i32* @SYSCTLNAME_CPTIME, align 4
  %157 = bitcast i64* %18 to i64**
  %158 = call i64 @sysctlbyname(i32 %156, i64** %157, i64* %7, i32* null, i32 0)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* @SYSCTLNAME_CPTIME, align 4
  %162 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = call i32 @timespecsub(%struct.timespec* %2, %struct.timespec* %1, %struct.timespec* %2)
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %163
  %170 = load i64, i64* @hflag, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %169
  %175 = load i32, i32* @bflag, align 4
  %176 = load i32, i32* @tflag, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32, i32* @pflag, align 4
  %179 = mul nsw i32 %177, %178
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %182, i32 %184)
  %186 = load i32, i32* @pflag, align 4
  %187 = load i32, i32* @tflag, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sitofp i32 %188 to double
  %190 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sitofp i32 %191 to double
  %193 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sitofp i32 %194 to double
  %196 = fmul double %195, 1.000000e-09
  %197 = fadd double %192, %196
  %198 = fdiv double %189, %197
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double %198)
  %200 = load i32, i32* @bflag, align 4
  %201 = load i32, i32* @tflag, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* @pflag, align 4
  %204 = mul nsw i32 %202, %203
  %205 = mul nsw i32 %204, 8
  %206 = sitofp i32 %205 to double
  %207 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sitofp i32 %208 to double
  %210 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sitofp i32 %211 to double
  %213 = fmul double %212, 1.000000e-09
  %214 = fadd double %209, %213
  %215 = fdiv double %206, %214
  %216 = fmul double %215, 1.000000e-09
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double %216)
  store i64 0, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %238, %174
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @CPUSTATES, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %241

222:                                              ; preds = %218
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %15, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %18, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %230, %226
  store i64 %231, i64* %229, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %18, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %6, align 8
  %237 = add nsw i64 %236, %235
  store i64 %237, i64* %6, align 8
  br label %238

238:                                              ; preds = %222
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %218

241:                                              ; preds = %218
  %242 = load i64, i64* @CP_USER, align 8
  %243 = getelementptr inbounds i64, i64* %18, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = mul nsw i64 100, %244
  %246 = sitofp i64 %245 to float
  %247 = load i64, i64* %6, align 8
  %248 = sitofp i64 %247 to float
  %249 = fdiv float %246, %248
  %250 = fpext float %249 to double
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), double %250)
  %252 = load i64, i64* @CP_NICE, align 8
  %253 = getelementptr inbounds i64, i64* %18, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = mul nsw i64 100, %254
  %256 = sitofp i64 %255 to float
  %257 = load i64, i64* %6, align 8
  %258 = sitofp i64 %257 to float
  %259 = fdiv float %256, %258
  %260 = fpext float %259 to double
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), double %260)
  %262 = load i64, i64* @CP_SYS, align 8
  %263 = getelementptr inbounds i64, i64* %18, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = mul nsw i64 100, %264
  %266 = sitofp i64 %265 to float
  %267 = load i64, i64* %6, align 8
  %268 = sitofp i64 %267 to float
  %269 = fdiv float %266, %268
  %270 = fpext float %269 to double
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), double %270)
  %272 = load i64, i64* @CP_INTR, align 8
  %273 = getelementptr inbounds i64, i64* %18, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = mul nsw i64 100, %274
  %276 = sitofp i64 %275 to float
  %277 = load i64, i64* %6, align 8
  %278 = sitofp i64 %277 to float
  %279 = fdiv float %276, %278
  %280 = fpext float %279 to double
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), double %280)
  %282 = load i64, i64* @CP_IDLE, align 8
  %283 = getelementptr inbounds i64, i64* %18, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = mul nsw i64 100, %284
  %286 = sitofp i64 %285 to float
  %287 = load i64, i64* %6, align 8
  %288 = sitofp i64 %287 to float
  %289 = fdiv float %286, %288
  %290 = fpext float %289 to double
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), double %290)
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %293 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %293)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64* @malloc(i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @bzero(i64*, i32) #2

declare dso_local i64 @sysctlbyname(i32, i64**, i64*, i32*, i32) #2

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @kill(i64, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @tcpp_client_worker(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #2

declare dso_local i64 @WEXITSTATUS(i32) #2

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
