; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.TYPE_17__*, i32*, %struct.trapframe*, i64, i32, %struct.proc* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.proc = type { i64, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 (i32, i32)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i8* }

@v_trap = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@PSL_PR = common dso_local global i32 0, align 4
@KTR_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"trap: %s type=%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@PSL_SE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_TRACE = common dso_local global i32 0, align 4
@PCB_FPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"FPU already enabled for thread\00", align 1
@PCB_VEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Altivec already enabled for thread\00", align 1
@PCB_VSX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"VSX already enabled for thread\00", align 1
@SPR_FSCR = common dso_local global i32 0, align 4
@FSCR_IC_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Hardware Transactional Memory subsystem disabled\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@ILL_ILLOPC = common dso_local global i32 0, align 4
@PCB_CFSCR = common dso_local global i32 0, align 4
@PCB_CDSCR = common dso_local global i32 0, align 4
@FSCR_DSCR = common dso_local global i32 0, align 4
@SPR_DSCR = common dso_local global i32 0, align 4
@FSCR_EBB = common dso_local global i32 0, align 4
@SPR_EBBHR = common dso_local global i32 0, align 4
@SPR_EBBRR = common dso_local global i32 0, align 4
@SPR_BESCR = common dso_local global i32 0, align 4
@FSCR_TAR = common dso_local global i32 0, align 4
@SPR_TAR = common dso_local global i32 0, align 4
@FSCR_LM = common dso_local global i32 0, align 4
@SPR_LMRR = common dso_local global i32 0, align 4
@SPR_LMSER = common dso_local global i32 0, align 4
@ALTIVEC_VSCR_NJ = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@BUS_ADRALN = common dso_local global i32 0, align 4
@SPR_DBSR = common dso_local global i32 0, align 4
@PSL_DE = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@DBCR0_IC = common dso_local global i32 0, align 4
@TRAP_BRKPT = common dso_local global i32 0, align 4
@EXC_PGM_PRIV = common dso_local global i32 0, align 4
@ILL_PRVOPC = common dso_local global i32 0, align 4
@EXC_PGM_ILLEGAL = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@FPE_FLTINV = common dso_local global i32 0, align 4
@BUS_OBJERR = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"kernel trap doesn't have ucred\00", align 1
@EXC_DTRACE = common dso_local global i32 0, align 4
@SEGMENT_MASK = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@USER_ADDR = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trap(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %11 = load i32, i32* @v_trap, align 4
  %12 = call i32 @VM_CNT_INC(i32 %11)
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %13, %struct.thread** %3, align 8
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 6
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %4, align 8
  %17 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %18 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PSL_PR, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @KTR_TRAP, align 4
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @trapname(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @CTR3(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i8* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %331

38:                                               ; preds = %1
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 3
  store %struct.trapframe* %41, %struct.trapframe** %43, align 8
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.proc*, %struct.proc** %4, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = call i32 @thread_cow_update(%struct.thread* %52)
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %327 [
    i32 141, label %56
    i32 138, label %56
    i32 149, label %65
    i32 144, label %65
    i32 140, label %71
    i32 147, label %74
    i32 137, label %88
    i32 133, label %102
    i32 148, label %147
    i32 146, label %228
    i32 136, label %231
    i32 135, label %231
    i32 134, label %231
    i32 152, label %244
    i32 151, label %258
    i32 142, label %281
    i32 143, label %324
  ]

56:                                               ; preds = %54, %54
  %57 = load i32, i32* @PSL_SE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @SIGTRAP, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @TRAP_TRACE, align 4
  store i32 %64, i32* %8, align 4
  br label %330

65:                                               ; preds = %54, %54
  %66 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %67 = call i32 @trap_pfault(%struct.trapframe* %66, i32 1, i32* %5, i32* %8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %330

71:                                               ; preds = %54
  %72 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %73 = call i32 @syscall(%struct.trapframe* %72)
  br label %330

74:                                               ; preds = %54
  %75 = load %struct.thread*, %struct.thread** %3, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PCB_FPU, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @PCB_FPU, align 4
  %83 = icmp ne i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @KASSERT(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.thread*, %struct.thread** %3, align 8
  %87 = call i32 @enable_fpu(%struct.thread* %86)
  br label %330

88:                                               ; preds = %54
  %89 = load %struct.thread*, %struct.thread** %3, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PCB_VEC, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @PCB_VEC, align 4
  %97 = icmp ne i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @KASSERT(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.thread*, %struct.thread** %3, align 8
  %101 = call i32 @enable_vec(%struct.thread* %100)
  br label %330

102:                                              ; preds = %54
  %103 = load %struct.thread*, %struct.thread** %3, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PCB_VSX, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @PCB_VSX, align 4
  %111 = icmp ne i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @KASSERT(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.thread*, %struct.thread** %3, align 8
  %115 = getelementptr inbounds %struct.thread, %struct.thread* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PCB_VEC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %102
  %123 = load %struct.thread*, %struct.thread** %3, align 8
  %124 = call i32 @enable_vec(%struct.thread* %123)
  br label %125

125:                                              ; preds = %122, %102
  %126 = load %struct.thread*, %struct.thread** %3, align 8
  %127 = getelementptr inbounds %struct.thread, %struct.thread* %126, i32 0, i32 1
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PCB_FPU, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.thread*, %struct.thread** %3, align 8
  %136 = call i32 @save_fpu(%struct.thread* %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i32, i32* @PCB_VSX, align 4
  %139 = load %struct.thread*, %struct.thread** %3, align 8
  %140 = getelementptr inbounds %struct.thread, %struct.thread* %139, i32 0, i32 1
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  %145 = load %struct.thread*, %struct.thread** %3, align 8
  %146 = call i32 @enable_fpu(%struct.thread* %145)
  br label %330

147:                                              ; preds = %54
  %148 = load i32, i32* @SPR_FSCR, align 4
  %149 = call i32 @mfspr(i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @FSCR_IC_MASK, align 4
  %152 = and i32 %150, %151
  switch i32 %152, label %218 [
    i32 130, label %153
    i32 132, label %158
    i32 131, label %173
    i32 128, label %190
    i32 129, label %203
  ]

153:                                              ; preds = %147
  %154 = load i32, i32* @KTR_TRAP, align 4
  %155 = call i32 @CTR0(i32 %154, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* @SIGILL, align 4
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @ILL_ILLOPC, align 4
  store i32 %157, i32* %8, align 4
  br label %221

158:                                              ; preds = %147
  %159 = load i32, i32* @PCB_CFSCR, align 4
  %160 = load i32, i32* @PCB_CDSCR, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.thread*, %struct.thread** %3, align 8
  %163 = getelementptr inbounds %struct.thread, %struct.thread* %162, i32 0, i32 1
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %161
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @FSCR_DSCR, align 4
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* @SPR_DSCR, align 4
  %172 = call i32 @mtspr(i32 %171, i32 0)
  br label %221

173:                                              ; preds = %147
  %174 = load i32, i32* @PCB_CFSCR, align 4
  %175 = load %struct.thread*, %struct.thread** %3, align 8
  %176 = getelementptr inbounds %struct.thread, %struct.thread* %175, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* @FSCR_EBB, align 4
  %182 = load i32, i32* %10, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* @SPR_EBBHR, align 4
  %185 = call i32 @mtspr(i32 %184, i32 0)
  %186 = load i32, i32* @SPR_EBBRR, align 4
  %187 = call i32 @mtspr(i32 %186, i32 0)
  %188 = load i32, i32* @SPR_BESCR, align 4
  %189 = call i32 @mtspr(i32 %188, i32 0)
  br label %221

190:                                              ; preds = %147
  %191 = load i32, i32* @PCB_CFSCR, align 4
  %192 = load %struct.thread*, %struct.thread** %3, align 8
  %193 = getelementptr inbounds %struct.thread, %struct.thread* %192, i32 0, i32 1
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %191
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* @FSCR_TAR, align 4
  %199 = load i32, i32* %10, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* @SPR_TAR, align 4
  %202 = call i32 @mtspr(i32 %201, i32 0)
  br label %221

203:                                              ; preds = %147
  %204 = load i32, i32* @PCB_CFSCR, align 4
  %205 = load %struct.thread*, %struct.thread** %3, align 8
  %206 = getelementptr inbounds %struct.thread, %struct.thread* %205, i32 0, i32 1
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %204
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* @FSCR_LM, align 4
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* @SPR_LMRR, align 4
  %215 = call i32 @mtspr(i32 %214, i32 0)
  %216 = load i32, i32* @SPR_LMSER, align 4
  %217 = call i32 @mtspr(i32 %216, i32 0)
  br label %221

218:                                              ; preds = %147
  %219 = load i32, i32* @SIGILL, align 4
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* @ILL_ILLOPC, align 4
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %218, %203, %190, %173, %158, %153
  %222 = load i32, i32* @SPR_FSCR, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @FSCR_IC_MASK, align 4
  %225 = xor i32 %224, -1
  %226 = and i32 %223, %225
  %227 = call i32 @mtspr(i32 %222, i32 %226)
  br label %330

228:                                              ; preds = %54
  %229 = load i32, i32* @SIGILL, align 4
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* @ILL_ILLOPC, align 4
  store i32 %230, i32* %8, align 4
  br label %330

231:                                              ; preds = %54, %54, %54
  %232 = load %struct.thread*, %struct.thread** %3, align 8
  %233 = call i32 @save_vec(%struct.thread* %232)
  %234 = load i32, i32* @ALTIVEC_VSCR_NJ, align 4
  %235 = load %struct.thread*, %struct.thread** %3, align 8
  %236 = getelementptr inbounds %struct.thread, %struct.thread* %235, i32 0, i32 1
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %234
  store i32 %241, i32* %239, align 4
  %242 = load %struct.thread*, %struct.thread** %3, align 8
  %243 = call i32 @enable_vec(%struct.thread* %242)
  br label %330

244:                                              ; preds = %54
  %245 = load %struct.thread*, %struct.thread** %3, align 8
  %246 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %247 = call i32 @fix_unaligned(%struct.thread* %245, %struct.trapframe* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, i32* @SIGBUS, align 4
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* @BUS_ADRALN, align 4
  store i32 %251, i32* %8, align 4
  br label %257

252:                                              ; preds = %244
  %253 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %254 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 4
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %252, %249
  br label %330

258:                                              ; preds = %54
  %259 = load i32, i32* @SPR_DBSR, align 4
  %260 = load i32, i32* @SPR_DBSR, align 4
  %261 = call i32 @mfspr(i32 %260)
  %262 = call i32 @mtspr(i32 %259, i32 %261)
  %263 = load i32, i32* @PSL_DE, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %266 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* @DBCR0_IDM, align 4
  %270 = load i32, i32* @DBCR0_IC, align 4
  %271 = or i32 %269, %270
  %272 = xor i32 %271, -1
  %273 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %274 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, %272
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* @SIGTRAP, align 4
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* @TRAP_TRACE, align 4
  store i32 %280, i32* %8, align 4
  br label %330

281:                                              ; preds = %54
  %282 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %283 = call i32 @frame_is_trap_inst(%struct.trapframe* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i32, i32* @SIGTRAP, align 4
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* @TRAP_BRKPT, align 4
  store i32 %287, i32* %8, align 4
  br label %323

288:                                              ; preds = %281
  %289 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %290 = load %struct.thread*, %struct.thread** %3, align 8
  %291 = call i32 @ppc_instr_emulate(%struct.trapframe* %289, %struct.thread* %290)
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* @SIGILL, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %288
  %296 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %297 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @EXC_PGM_PRIV, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = load i32, i32* @ILL_PRVOPC, align 4
  store i32 %303, i32* %8, align 4
  br label %314

304:                                              ; preds = %295
  %305 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %306 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @EXC_PGM_ILLEGAL, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %304
  %312 = load i32, i32* @ILL_ILLOPC, align 4
  store i32 %312, i32* %8, align 4
  br label %313

313:                                              ; preds = %311, %304
  br label %314

314:                                              ; preds = %313, %302
  br label %322

315:                                              ; preds = %288
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* @SIGFPE, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %320, i32* %8, align 4
  br label %321

321:                                              ; preds = %319, %315
  br label %322

322:                                              ; preds = %321, %314
  br label %323

323:                                              ; preds = %322, %285
  br label %330

324:                                              ; preds = %54
  %325 = load i32, i32* @SIGBUS, align 4
  store i32 %325, i32* %5, align 4
  %326 = load i32, i32* @BUS_OBJERR, align 4
  store i32 %326, i32* %8, align 4
  br label %330

327:                                              ; preds = %54
  %328 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %329 = call i32 @trap_fatal(%struct.trapframe* %328)
  br label %330

330:                                              ; preds = %327, %324, %323, %258, %257, %231, %228, %221, %137, %88, %74, %71, %70, %56
  br label %361

331:                                              ; preds = %1
  %332 = load i64, i64* @cold, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %331
  %335 = load %struct.thread*, %struct.thread** %3, align 8
  %336 = getelementptr inbounds %struct.thread, %struct.thread* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br label %339

339:                                              ; preds = %334, %331
  %340 = phi i1 [ true, %331 ], [ %338, %334 ]
  %341 = zext i1 %340 to i32
  %342 = call i32 @KASSERT(i32 %341, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %343 = load i32, i32* %6, align 4
  switch i32 %343, label %357 [
    i32 142, label %344
    i32 149, label %345
    i32 143, label %351
  ]

344:                                              ; preds = %339
  br label %358

345:                                              ; preds = %339
  %346 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %347 = call i32 @trap_pfault(%struct.trapframe* %346, i32 0, i32* null, i32* null)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %345
  br label %400

350:                                              ; preds = %345
  br label %358

351:                                              ; preds = %339
  %352 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %353 = call i32 @handle_onfault(%struct.trapframe* %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  br label %400

356:                                              ; preds = %351
  br label %358

357:                                              ; preds = %339
  br label %358

358:                                              ; preds = %357, %356, %350, %344
  %359 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %360 = call i32 @trap_fatal(%struct.trapframe* %359)
  br label %361

361:                                              ; preds = %358, %330
  %362 = load i32, i32* %5, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %396

364:                                              ; preds = %361
  %365 = load %struct.proc*, %struct.proc** %4, align 8
  %366 = getelementptr inbounds %struct.proc, %struct.proc* %365, i32 0, i32 1
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i32 (i32, i32)*, i32 (i32, i32)** %368, align 8
  %370 = icmp ne i32 (i32, i32)* %369, null
  br i1 %370, label %371, label %380

371:                                              ; preds = %364
  %372 = load %struct.proc*, %struct.proc** %4, align 8
  %373 = getelementptr inbounds %struct.proc, %struct.proc* %372, i32 0, i32 1
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 0
  %376 = load i32 (i32, i32)*, i32 (i32, i32)** %375, align 8
  %377 = load i32, i32* %5, align 4
  %378 = load i32, i32* %6, align 4
  %379 = call i32 %376(i32 %377, i32 %378)
  store i32 %379, i32* %5, align 4
  br label %380

380:                                              ; preds = %371, %364
  %381 = call i32 @ksiginfo_init_trap(%struct.TYPE_20__* %9)
  %382 = load i32, i32* %5, align 4
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %382, i32* %383, align 8
  %384 = load i32, i32* %8, align 4
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %384, i32* %385, align 4
  %386 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %387 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = inttoptr i64 %389 to i8*
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  store i8* %390, i8** %391, align 8
  %392 = load i32, i32* %6, align 4
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i32 %392, i32* %393, align 8
  %394 = load %struct.thread*, %struct.thread** %3, align 8
  %395 = call i32 @trapsignal(%struct.thread* %394, %struct.TYPE_20__* %9)
  br label %396

396:                                              ; preds = %380, %361
  %397 = load %struct.thread*, %struct.thread** %3, align 8
  %398 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %399 = call i32 @userret(%struct.thread* %397, %struct.trapframe* %398)
  br label %400

400:                                              ; preds = %396, %355, %349
  ret void
}

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @trapname(i32) #1

declare dso_local i32 @thread_cow_update(%struct.thread*) #1

declare dso_local i32 @trap_pfault(%struct.trapframe*, i32, i32*, i32*) #1

declare dso_local i32 @syscall(%struct.trapframe*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @enable_fpu(%struct.thread*) #1

declare dso_local i32 @enable_vec(%struct.thread*) #1

declare dso_local i32 @save_fpu(%struct.thread*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @save_vec(%struct.thread*) #1

declare dso_local i32 @fix_unaligned(%struct.thread*, %struct.trapframe*) #1

declare dso_local i32 @frame_is_trap_inst(%struct.trapframe*) #1

declare dso_local i32 @ppc_instr_emulate(%struct.trapframe*, %struct.thread*) #1

declare dso_local i32 @trap_fatal(%struct.trapframe*) #1

declare dso_local i32 @handle_onfault(%struct.trapframe*) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_20__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_20__*) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
