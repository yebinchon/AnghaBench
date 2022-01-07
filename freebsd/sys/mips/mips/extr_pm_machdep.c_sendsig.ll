; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_11__, %struct.trapframe*, %struct.TYPE_9__, %struct.proc* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.trapframe = type { i32, i32, i8*, i8*, i8*, i64, i64, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.proc = type { %struct.TYPE_14__*, %struct.sigacts* }
%struct.TYPE_14__ = type { i8** }
%struct.sigacts = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8*, i8* }
%struct.sigframe = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32*, i32, i32, i32, i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@UCONTEXT_MAGIC = common dso_local global i32 0, align 4
@MDTD_FPUSED = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@STACK_ALIGN = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@PS_STRINGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendsig(i64 %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca %struct.sigacts*, align 8
  %11 = alloca %struct.sigframe, align 8
  %12 = alloca %struct.sigframe*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %15, %struct.thread** %8, align 8
  %16 = load %struct.thread*, %struct.thread** %8, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 4
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  store %struct.proc* %18, %struct.proc** %7, align 8
  %19 = load %struct.proc*, %struct.proc** %7, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %19, i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 1
  %27 = load %struct.sigacts*, %struct.sigacts** %26, align 8
  store %struct.sigacts* %27, %struct.sigacts** %10, align 8
  %28 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %29 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %28, i32 0, i32 0
  %30 = load i32, i32* @MA_OWNED, align 4
  %31 = call i32 @mtx_assert(i32* %29, i32 %30)
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 2
  %34 = load %struct.trapframe*, %struct.trapframe** %33, align 8
  store %struct.trapframe* %34, %struct.trapframe** %9, align 8
  %35 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sigonstack(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = call i32 @bzero(%struct.sigframe* %11, i32 96)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.thread*, %struct.thread** %8, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 1
  %48 = bitcast %struct.TYPE_11__* %45 to i8*
  %49 = bitcast %struct.TYPE_11__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 7
  store i8* %59, i8** %62, align 8
  %63 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %64 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 6
  store i32 %65, i32* %68, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 4
  %75 = load %struct.thread*, %struct.thread** %8, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @UCONTEXT_MAGIC, align 4
  %83 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %82, i32* %87, align 4
  %88 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 10
  %90 = bitcast i32* %89 to i8*
  %91 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = bitcast i32* %95 to i8*
  %97 = call i32 @bcopy(i8* %90, i8* %96, i32 0)
  %98 = load %struct.thread*, %struct.thread** %8, align 8
  %99 = getelementptr inbounds %struct.thread, %struct.thread* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MDTD_FPUSED, align 4
  %103 = and i32 %101, %102
  %104 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %3
  %113 = load %struct.thread*, %struct.thread** %8, align 8
  %114 = load i32, i32* @fpcurthread, align 4
  %115 = call %struct.thread* @PCPU_GET(i32 %114)
  %116 = icmp eq %struct.thread* %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.thread*, %struct.thread** %8, align 8
  %119 = call i32 @MipsSaveCurFPState(%struct.thread* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.thread*, %struct.thread** %8, align 8
  %122 = getelementptr inbounds %struct.thread, %struct.thread* %121, i32 0, i32 2
  %123 = load %struct.trapframe*, %struct.trapframe** %122, align 8
  %124 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %123, i32 0, i32 9
  %125 = bitcast i32* %124 to i8*
  %126 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @bcopy(i8* %125, i8* %130, i32 8)
  br label %132

132:                                              ; preds = %120, %3
  %133 = load %struct.thread*, %struct.thread** %8, align 8
  %134 = getelementptr inbounds %struct.thread, %struct.thread* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TDP_ALTSTACK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %139
  %143 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %144 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i64 @SIGISMEMBER(i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %142
  %150 = load %struct.thread*, %struct.thread** %8, align 8
  %151 = getelementptr inbounds %struct.thread, %struct.thread* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.thread*, %struct.thread** %8, align 8
  %155 = getelementptr inbounds %struct.thread, %struct.thread* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %153, %157
  %159 = sub i64 %158, 96
  %160 = load i32, i32* @STACK_ALIGN, align 4
  %161 = sub nsw i32 %160, 1
  %162 = xor i32 %161, -1
  %163 = sext i32 %162 to i64
  %164 = and i64 %159, %163
  %165 = inttoptr i64 %164 to %struct.sigframe*
  store %struct.sigframe* %165, %struct.sigframe** %12, align 8
  br label %179

166:                                              ; preds = %142, %139, %132
  %167 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %168 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = sub i64 %170, 96
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @STACK_ALIGN, align 4
  %174 = sub nsw i32 %173, 1
  %175 = xor i32 %174, -1
  %176 = and i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.sigframe*
  store %struct.sigframe* %178, %struct.sigframe** %12, align 8
  br label %179

179:                                              ; preds = %166, %149
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %182 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.sigframe*, %struct.sigframe** %12, align 8
  %184 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %183, i32 0, i32 1
  %185 = ptrtoint %struct.TYPE_12__* %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %188 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %187, i32 0, i32 8
  store i8* %186, i8** %188, align 8
  %189 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %190 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i64 @SIGISMEMBER(i32 %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %179
  %196 = load %struct.sigframe*, %struct.sigframe** %12, align 8
  %197 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %196, i32 0, i32 0
  %198 = ptrtoint %struct.TYPE_13__* %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %201 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %200, i32 0, i32 7
  store i8* %199, i8** %201, align 8
  %202 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = bitcast %struct.TYPE_13__* %202 to i8*
  %206 = bitcast %struct.TYPE_13__* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 24, i1 false)
  %207 = load i32, i32* %13, align 4
  %208 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %216 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i8*
  %219 = getelementptr inbounds %struct.sigframe, %struct.sigframe* %11, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  br label %232

221:                                              ; preds = %179
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %226 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %225, i32 0, i32 7
  store i8* %224, i8** %226, align 8
  %227 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %228 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %231 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %230, i32 0, i32 6
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %221, %195
  %233 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %234 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %233, i32 0, i32 0
  %235 = call i32 @mtx_unlock(i32* %234)
  %236 = load %struct.proc*, %struct.proc** %7, align 8
  %237 = call i32 @PROC_UNLOCK(%struct.proc* %236)
  %238 = load %struct.sigframe*, %struct.sigframe** %12, align 8
  %239 = call i64 @copyout(%struct.sigframe* %11, %struct.sigframe* %238, i32 96)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %232
  %242 = load %struct.proc*, %struct.proc** %7, align 8
  %243 = call i32 @PROC_LOCK(%struct.proc* %242)
  %244 = load %struct.thread*, %struct.thread** %8, align 8
  %245 = load i32, i32* @SIGILL, align 4
  %246 = call i32 @sigexit(%struct.thread* %244, i32 %245)
  br label %247

247:                                              ; preds = %241, %232
  %248 = load i64, i64* %4, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %251 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %250, i32 0, i32 4
  store i8* %249, i8** %251, align 8
  %252 = load i64, i64* %4, align 8
  %253 = inttoptr i64 %252 to i8*
  %254 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %255 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %254, i32 0, i32 3
  store i8* %253, i8** %255, align 8
  %256 = load %struct.sigframe*, %struct.sigframe** %12, align 8
  %257 = ptrtoint %struct.sigframe* %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %261 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load i64, i64* @PS_STRINGS, align 8
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.proc*, %struct.proc** %7, align 8
  %265 = getelementptr inbounds %struct.proc, %struct.proc* %264, i32 0, i32 0
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i8**, i8*** %267, align 8
  %269 = load i8*, i8** %268, align 8
  %270 = ptrtoint i8* %263 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = inttoptr i64 %272 to i8*
  %274 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %275 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load %struct.proc*, %struct.proc** %7, align 8
  %277 = call i32 @PROC_LOCK(%struct.proc* %276)
  %278 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %279 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %278, i32 0, i32 0
  %280 = call i32 @mtx_lock(i32* %279)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @bzero(%struct.sigframe*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @MipsSaveCurFPState(%struct.thread*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @copyout(%struct.sigframe*, %struct.sigframe*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
