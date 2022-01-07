; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_freebsd32_machdep.c_freebsd32_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_freebsd32_machdep.c_freebsd32_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_18__*, %struct.TYPE_15__, %struct.TYPE_13__, %struct.proc* }
%struct.TYPE_18__ = type { i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.proc = type { %struct.TYPE_11__*, %struct.sigacts* }
%struct.TYPE_11__ = type { i8** }
%struct.sigacts = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i8* }
%struct.fpreg32 = type { i32* }
%struct.reg32 = type { i32* }
%struct.sigframe32 = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_12__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32*, i8*, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@PC = common dso_local global i64 0, align 8
@MULLO = common dso_local global i64 0, align 8
@MULHI = common dso_local global i64 0, align 8
@UCONTEXT_MAGIC = common dso_local global i32 0, align 4
@MDTD_FPUSED = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@FREEBSD32_PS_STRINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_19__*, i32*)* @freebsd32_sendsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freebsd32_sendsig(i64 %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.fpreg32, align 8
  %10 = alloca %struct.reg32, align 8
  %11 = alloca %struct.sigacts*, align 8
  %12 = alloca %struct.sigframe32, align 8
  %13 = alloca %struct.sigframe32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %8, align 8
  %18 = load %struct.thread*, %struct.thread** %8, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 4
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %7, align 8
  %21 = load %struct.proc*, %struct.proc** %7, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %21, i32 %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.proc*, %struct.proc** %7, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 1
  %29 = load %struct.sigacts*, %struct.sigacts** %28, align 8
  store %struct.sigacts* %29, %struct.sigacts** %11, align 8
  %30 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %31 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %30, i32 0, i32 0
  %32 = load i32, i32* @MA_OWNED, align 4
  %33 = call i32 @mtx_assert(i32* %31, i32 %32)
  %34 = load %struct.thread*, %struct.thread** %8, align 8
  %35 = call i32 @fill_regs32(%struct.thread* %34, %struct.reg32* %10)
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sigonstack(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = call i32 @bzero(%struct.sigframe32* %12, i32 96)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.thread*, %struct.thread** %8, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load %struct.thread*, %struct.thread** %8, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.thread*, %struct.thread** %8, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = getelementptr inbounds %struct.reg32, %struct.reg32* %10, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @PC, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 7
  store i32 %80, i32* %83, align 8
  %84 = getelementptr inbounds %struct.reg32, %struct.reg32* %10, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @MULLO, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = getelementptr inbounds %struct.reg32, %struct.reg32* %10, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @MULHI, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 8
  %100 = load %struct.thread*, %struct.thread** %8, align 8
  %101 = getelementptr inbounds %struct.thread, %struct.thread* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @UCONTEXT_MAGIC, align 4
  %109 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %108, i32* %113, align 4
  store i32 1, i32* %16, align 4
  br label %114

114:                                              ; preds = %131, %3
  %115 = load i32, i32* %16, align 4
  %116 = icmp ult i32 %115, 32
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.reg32, %struct.reg32* %10, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %16, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %114

134:                                              ; preds = %114
  %135 = load %struct.thread*, %struct.thread** %8, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MDTD_FPUSED, align 4
  %140 = and i32 %138, %139
  %141 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %134
  %150 = load %struct.thread*, %struct.thread** %8, align 8
  %151 = load i32, i32* @fpcurthread, align 4
  %152 = call %struct.thread* @PCPU_GET(i32 %151)
  %153 = icmp eq %struct.thread* %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.thread*, %struct.thread** %8, align 8
  %156 = call i32 @MipsSaveCurFPState(%struct.thread* %155)
  br label %157

157:                                              ; preds = %154, %149
  %158 = load %struct.thread*, %struct.thread** %8, align 8
  %159 = call i32 @fill_fpregs32(%struct.thread* %158, %struct.fpreg32* %9)
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %177, %157
  %161 = load i32, i32* %16, align 4
  %162 = icmp ult i32 %161, 33
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.fpreg32, %struct.fpreg32* %9, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %169, i32* %176, align 4
  br label %177

177:                                              ; preds = %163
  %178 = load i32, i32* %16, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %160

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %134
  %182 = load %struct.thread*, %struct.thread** %8, align 8
  %183 = getelementptr inbounds %struct.thread, %struct.thread* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TDP_ALTSTACK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %181
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %211, label %191

191:                                              ; preds = %188
  %192 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %193 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i64 @SIGISMEMBER(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %191
  %199 = load %struct.thread*, %struct.thread** %8, align 8
  %200 = getelementptr inbounds %struct.thread, %struct.thread* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.thread*, %struct.thread** %8, align 8
  %204 = getelementptr inbounds %struct.thread, %struct.thread* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %202, %206
  %208 = sub i64 %207, 96
  %209 = and i64 %208, -4
  %210 = inttoptr i64 %209 to %struct.sigframe32*
  store %struct.sigframe32* %210, %struct.sigframe32** %13, align 8
  br label %223

211:                                              ; preds = %191, %188, %181
  %212 = load %struct.thread*, %struct.thread** %8, align 8
  %213 = getelementptr inbounds %struct.thread, %struct.thread* %212, i32 0, i32 1
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = sub i64 %217, 96
  %219 = trunc i64 %218 to i32
  %220 = sext i32 %219 to i64
  %221 = and i64 %220, -4
  %222 = inttoptr i64 %221 to %struct.sigframe32*
  store %struct.sigframe32* %222, %struct.sigframe32** %13, align 8
  br label %223

223:                                              ; preds = %211, %198
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.thread*, %struct.thread** %8, align 8
  %226 = getelementptr inbounds %struct.thread, %struct.thread* %225, i32 0, i32 1
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  store i32 %224, i32* %228, align 4
  %229 = load %struct.sigframe32*, %struct.sigframe32** %13, align 8
  %230 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %229, i32 0, i32 1
  %231 = ptrtoint %struct.TYPE_16__* %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = load %struct.thread*, %struct.thread** %8, align 8
  %234 = getelementptr inbounds %struct.thread, %struct.thread* %233, i32 0, i32 1
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 8
  store i8* %232, i8** %236, align 8
  %237 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %238 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %14, align 4
  %241 = call i64 @SIGISMEMBER(i32 %239, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %267

243:                                              ; preds = %223
  %244 = load %struct.sigframe32*, %struct.sigframe32** %13, align 8
  %245 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %244, i32 0, i32 0
  %246 = ptrtoint %struct.TYPE_17__* %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = load %struct.thread*, %struct.thread** %8, align 8
  %249 = getelementptr inbounds %struct.thread, %struct.thread* %248, i32 0, i32 1
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 7
  store i8* %247, i8** %251, align 8
  %252 = load i32, i32* %14, align 4
  %253 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  %260 = load %struct.thread*, %struct.thread** %8, align 8
  %261 = getelementptr inbounds %struct.thread, %struct.thread* %260, i32 0, i32 1
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds %struct.sigframe32, %struct.sigframe32* %12, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  br label %284

267:                                              ; preds = %223
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.thread*, %struct.thread** %8, align 8
  %272 = getelementptr inbounds %struct.thread, %struct.thread* %271, i32 0, i32 1
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 7
  store i8* %270, i8** %274, align 8
  %275 = load %struct.thread*, %struct.thread** %8, align 8
  %276 = getelementptr inbounds %struct.thread, %struct.thread* %275, i32 0, i32 1
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.thread*, %struct.thread** %8, align 8
  %281 = getelementptr inbounds %struct.thread, %struct.thread* %280, i32 0, i32 1
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 6
  store i32 %279, i32* %283, align 4
  br label %284

284:                                              ; preds = %267, %243
  %285 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %286 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %285, i32 0, i32 0
  %287 = call i32 @mtx_unlock(i32* %286)
  %288 = load %struct.proc*, %struct.proc** %7, align 8
  %289 = call i32 @PROC_UNLOCK(%struct.proc* %288)
  %290 = load %struct.sigframe32*, %struct.sigframe32** %13, align 8
  %291 = call i64 @copyout(%struct.sigframe32* %12, %struct.sigframe32* %290, i32 96)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %284
  %294 = load %struct.proc*, %struct.proc** %7, align 8
  %295 = call i32 @PROC_LOCK(%struct.proc* %294)
  %296 = load %struct.thread*, %struct.thread** %8, align 8
  %297 = load i32, i32* @SIGILL, align 4
  %298 = call i32 @sigexit(%struct.thread* %296, i32 %297)
  br label %299

299:                                              ; preds = %293, %284
  %300 = load i64, i64* %4, align 8
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.thread*, %struct.thread** %8, align 8
  %303 = getelementptr inbounds %struct.thread, %struct.thread* %302, i32 0, i32 1
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 4
  store i8* %301, i8** %305, align 8
  %306 = load i64, i64* %4, align 8
  %307 = inttoptr i64 %306 to i8*
  %308 = load %struct.thread*, %struct.thread** %8, align 8
  %309 = getelementptr inbounds %struct.thread, %struct.thread* %308, i32 0, i32 1
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 3
  store i8* %307, i8** %311, align 8
  %312 = load %struct.sigframe32*, %struct.sigframe32** %13, align 8
  %313 = ptrtoint %struct.sigframe32* %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = ptrtoint i8* %314 to i32
  %316 = load %struct.thread*, %struct.thread** %8, align 8
  %317 = getelementptr inbounds %struct.thread, %struct.thread* %316, i32 0, i32 1
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  store i32 %315, i32* %319, align 8
  %320 = load i64, i64* @FREEBSD32_PS_STRINGS, align 8
  %321 = inttoptr i64 %320 to i8*
  %322 = load %struct.proc*, %struct.proc** %7, align 8
  %323 = getelementptr inbounds %struct.proc, %struct.proc* %322, i32 0, i32 0
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  %326 = load i8**, i8*** %325, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = ptrtoint i8* %321 to i64
  %329 = ptrtoint i8* %327 to i64
  %330 = sub i64 %328, %329
  %331 = inttoptr i64 %330 to i8*
  %332 = load %struct.thread*, %struct.thread** %8, align 8
  %333 = getelementptr inbounds %struct.thread, %struct.thread* %332, i32 0, i32 1
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 2
  store i8* %331, i8** %335, align 8
  %336 = load %struct.proc*, %struct.proc** %7, align 8
  %337 = call i32 @PROC_LOCK(%struct.proc* %336)
  %338 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  %339 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %338, i32 0, i32 0
  %340 = call i32 @mtx_lock(i32* %339)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @fill_regs32(%struct.thread*, %struct.reg32*) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @bzero(%struct.sigframe32*, i32) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @MipsSaveCurFPState(%struct.thread*) #1

declare dso_local i32 @fill_fpregs32(%struct.thread*, %struct.fpreg32*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @copyout(%struct.sigframe32*, %struct.sigframe32*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigexit(%struct.thread*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
