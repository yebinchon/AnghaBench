; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_to_reap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_to_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i64, i64, %struct.TYPE_11__*, %struct.rusage, %struct.TYPE_10__*, i32, i8*, i32, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_11__ = type { %struct.rusage }
%struct.rusage = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.__wrusage = type { %struct.rusage, %struct.rusage }
%struct.TYPE_12__ = type { i32, i32, i8*, i32, i64, i64 }

@proctree_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@PRS_ZOMBIE = common dso_local global i64 0, align 8
@SIGCHLD = common dso_local global i64 0, align 8
@WLINUXCLONE = common dso_local global i32 0, align 4
@CLD_DUMPED = common dso_local global i32 0, align 4
@CLD_KILLED = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32, i64, i32*, i32, %struct.__wrusage*, %struct.TYPE_12__*, i32)* @proc_to_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_to_reap(%struct.thread* %0, %struct.proc* %1, i32 %2, i64 %3, i32* %4, i32 %5, %struct.__wrusage* %6, %struct.TYPE_12__* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.__wrusage*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.rusage*, align 8
  store %struct.thread* %0, %struct.thread** %11, align 8
  store %struct.proc* %1, %struct.proc** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.__wrusage* %6, %struct.__wrusage** %17, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load i32, i32* @SA_XLOCKED, align 4
  %22 = call i32 @sx_assert(i32* @proctree_lock, i32 %21)
  %23 = load %struct.proc*, %struct.proc** %12, align 8
  %24 = call i32 @PROC_LOCK(%struct.proc* %23)
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %111 [
    i32 134, label %26
    i32 130, label %35
    i32 131, label %46
    i32 129, label %57
    i32 128, label %70
    i32 133, label %83
    i32 132, label %96
  ]

26:                                               ; preds = %9
  %27 = load %struct.proc*, %struct.proc** %12, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 10
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.proc*, %struct.proc** %12, align 8
  %33 = call i32 @PROC_UNLOCK(%struct.proc* %32)
  store i32 0, i32* %10, align 4
  br label %270

34:                                               ; preds = %26
  br label %114

35:                                               ; preds = %9
  %36 = load %struct.proc*, %struct.proc** %12, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.proc*, %struct.proc** %12, align 8
  %44 = call i32 @PROC_UNLOCK(%struct.proc* %43)
  store i32 0, i32* %10, align 4
  br label %270

45:                                               ; preds = %35
  br label %114

46:                                               ; preds = %9
  %47 = load %struct.proc*, %struct.proc** %12, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.proc*, %struct.proc** %12, align 8
  %55 = call i32 @PROC_UNLOCK(%struct.proc* %54)
  store i32 0, i32* %10, align 4
  br label %270

56:                                               ; preds = %46
  br label %114

57:                                               ; preds = %9
  %58 = load %struct.proc*, %struct.proc** %12, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %14, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.proc*, %struct.proc** %12, align 8
  %68 = call i32 @PROC_UNLOCK(%struct.proc* %67)
  store i32 0, i32* %10, align 4
  br label %270

69:                                               ; preds = %57
  br label %114

70:                                               ; preds = %9
  %71 = load %struct.proc*, %struct.proc** %12, align 8
  %72 = getelementptr inbounds %struct.proc, %struct.proc* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = trunc i64 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.proc*, %struct.proc** %12, align 8
  %81 = call i32 @PROC_UNLOCK(%struct.proc* %80)
  store i32 0, i32* %10, align 4
  br label %270

82:                                               ; preds = %70
  br label %114

83:                                               ; preds = %9
  %84 = load %struct.proc*, %struct.proc** %12, align 8
  %85 = getelementptr inbounds %struct.proc, %struct.proc* %84, i32 0, i32 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = trunc i64 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.proc*, %struct.proc** %12, align 8
  %94 = call i32 @PROC_UNLOCK(%struct.proc* %93)
  store i32 0, i32* %10, align 4
  br label %270

95:                                               ; preds = %83
  br label %114

96:                                               ; preds = %9
  %97 = load %struct.proc*, %struct.proc** %12, align 8
  %98 = getelementptr inbounds %struct.proc, %struct.proc* %97, i32 0, i32 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %14, align 8
  %105 = trunc i64 %104 to i32
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = load %struct.proc*, %struct.proc** %12, align 8
  %109 = call i32 @PROC_UNLOCK(%struct.proc* %108)
  store i32 0, i32* %10, align 4
  br label %270

110:                                              ; preds = %96
  br label %114

111:                                              ; preds = %9
  %112 = load %struct.proc*, %struct.proc** %12, align 8
  %113 = call i32 @PROC_UNLOCK(%struct.proc* %112)
  store i32 0, i32* %10, align 4
  br label %270

114:                                              ; preds = %110, %95, %82, %69, %56, %45, %34
  %115 = load %struct.thread*, %struct.thread** %11, align 8
  %116 = load %struct.proc*, %struct.proc** %12, align 8
  %117 = call i64 @p_canwait(%struct.thread* %115, %struct.proc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.proc*, %struct.proc** %12, align 8
  %121 = call i32 @PROC_UNLOCK(%struct.proc* %120)
  store i32 0, i32* %10, align 4
  br label %270

122:                                              ; preds = %114
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @WEXITED, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.proc*, %struct.proc** %12, align 8
  %129 = getelementptr inbounds %struct.proc, %struct.proc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PRS_ZOMBIE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.proc*, %struct.proc** %12, align 8
  %135 = call i32 @PROC_UNLOCK(%struct.proc* %134)
  store i32 0, i32* %10, align 4
  br label %270

136:                                              ; preds = %127, %122
  %137 = load %struct.proc*, %struct.proc** %12, align 8
  %138 = getelementptr inbounds %struct.proc, %struct.proc* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SIGCHLD, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @WLINUXCLONE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = xor i32 %142, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %136
  %151 = load %struct.proc*, %struct.proc** %12, align 8
  %152 = call i32 @PROC_UNLOCK(%struct.proc* %151)
  store i32 0, i32* %10, align 4
  br label %270

153:                                              ; preds = %136
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %155 = icmp ne %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %218

156:                                              ; preds = %153
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %158 = call i32 @bzero(%struct.TYPE_12__* %157, i32 40)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* @SIGCHLD, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load %struct.proc*, %struct.proc** %12, align 8
  %165 = getelementptr inbounds %struct.proc, %struct.proc* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @WCOREDUMP(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %156
  %170 = load i32, i32* @CLD_DUMPED, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.proc*, %struct.proc** %12, align 8
  %174 = getelementptr inbounds %struct.proc, %struct.proc* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @WTERMSIG(i32 %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  br label %205

179:                                              ; preds = %156
  %180 = load %struct.proc*, %struct.proc** %12, align 8
  %181 = getelementptr inbounds %struct.proc, %struct.proc* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @WIFSIGNALED(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %179
  %186 = load i32, i32* @CLD_KILLED, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.proc*, %struct.proc** %12, align 8
  %190 = getelementptr inbounds %struct.proc, %struct.proc* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @WTERMSIG(i32 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  br label %204

195:                                              ; preds = %179
  %196 = load i32, i32* @CLD_EXITED, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.proc*, %struct.proc** %12, align 8
  %200 = getelementptr inbounds %struct.proc, %struct.proc* %199, i32 0, i32 6
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %195, %185
  br label %205

205:                                              ; preds = %204, %169
  %206 = load %struct.proc*, %struct.proc** %12, align 8
  %207 = getelementptr inbounds %struct.proc, %struct.proc* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.proc*, %struct.proc** %12, align 8
  %212 = getelementptr inbounds %struct.proc, %struct.proc* %211, i32 0, i32 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %205, %153
  %219 = load %struct.__wrusage*, %struct.__wrusage** %17, align 8
  %220 = icmp ne %struct.__wrusage* %219, null
  br i1 %220, label %221, label %254

221:                                              ; preds = %218
  %222 = load %struct.__wrusage*, %struct.__wrusage** %17, align 8
  %223 = getelementptr inbounds %struct.__wrusage, %struct.__wrusage* %222, i32 0, i32 1
  store %struct.rusage* %223, %struct.rusage** %20, align 8
  %224 = load %struct.rusage*, %struct.rusage** %20, align 8
  %225 = load %struct.proc*, %struct.proc** %12, align 8
  %226 = getelementptr inbounds %struct.proc, %struct.proc* %225, i32 0, i32 3
  %227 = bitcast %struct.rusage* %224 to i8*
  %228 = bitcast %struct.rusage* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %227, i8* align 8 %228, i64 8, i1 false)
  %229 = load %struct.proc*, %struct.proc** %12, align 8
  %230 = call i32 @PROC_STATLOCK(%struct.proc* %229)
  %231 = load %struct.proc*, %struct.proc** %12, align 8
  %232 = load %struct.rusage*, %struct.rusage** %20, align 8
  %233 = getelementptr inbounds %struct.rusage, %struct.rusage* %232, i32 0, i32 1
  %234 = load %struct.rusage*, %struct.rusage** %20, align 8
  %235 = getelementptr inbounds %struct.rusage, %struct.rusage* %234, i32 0, i32 0
  %236 = call i32 @calcru(%struct.proc* %231, i32* %233, i32* %235)
  %237 = load %struct.proc*, %struct.proc** %12, align 8
  %238 = call i32 @PROC_STATUNLOCK(%struct.proc* %237)
  %239 = load %struct.__wrusage*, %struct.__wrusage** %17, align 8
  %240 = getelementptr inbounds %struct.__wrusage, %struct.__wrusage* %239, i32 0, i32 0
  store %struct.rusage* %240, %struct.rusage** %20, align 8
  %241 = load %struct.rusage*, %struct.rusage** %20, align 8
  %242 = load %struct.proc*, %struct.proc** %12, align 8
  %243 = getelementptr inbounds %struct.proc, %struct.proc* %242, i32 0, i32 2
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = bitcast %struct.rusage* %241 to i8*
  %247 = bitcast %struct.rusage* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %246, i8* align 4 %247, i64 8, i1 false)
  %248 = load %struct.proc*, %struct.proc** %12, align 8
  %249 = load %struct.rusage*, %struct.rusage** %20, align 8
  %250 = getelementptr inbounds %struct.rusage, %struct.rusage* %249, i32 0, i32 1
  %251 = load %struct.rusage*, %struct.rusage** %20, align 8
  %252 = getelementptr inbounds %struct.rusage, %struct.rusage* %251, i32 0, i32 0
  %253 = call i32 @calccru(%struct.proc* %248, i32* %250, i32* %252)
  br label %254

254:                                              ; preds = %221, %218
  %255 = load %struct.proc*, %struct.proc** %12, align 8
  %256 = getelementptr inbounds %struct.proc, %struct.proc* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @PRS_ZOMBIE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %269

260:                                              ; preds = %254
  %261 = load i32, i32* %19, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %260
  %264 = load %struct.thread*, %struct.thread** %11, align 8
  %265 = load %struct.proc*, %struct.proc** %12, align 8
  %266 = load i32*, i32** %15, align 8
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @proc_reap(%struct.thread* %264, %struct.proc* %265, i32* %266, i32 %267)
  store i32 -1, i32* %10, align 4
  br label %270

269:                                              ; preds = %260, %254
  store i32 1, i32* %10, align 4
  br label %270

270:                                              ; preds = %269, %263, %150, %133, %119, %111, %107, %92, %79, %66, %53, %42, %31
  %271 = load i32, i32* %10, align 4
  ret i32 %271
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @p_canwait(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @WCOREDUMP(i32) #1

declare dso_local i8* @WTERMSIG(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @calcru(%struct.proc*, i32*, i32*) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

declare dso_local i32 @calccru(%struct.proc*, i32*, i32*) #1

declare dso_local i32 @proc_reap(%struct.thread*, %struct.proc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
