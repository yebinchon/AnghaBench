; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_trap.c_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_trap.c_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.trapframe*, i64, %struct.proc* }
%struct.trapframe = type { i64, i32, i8*, i8*, i32, i32 }
%struct.proc = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i64)* }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@KTR_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"trap: %p type=%s (%s) pil=%#lx\00", align 1
@trap_msg = common dso_local global i64* null, align 8
@T_KERNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@pil = common dso_local global i32 0, align 4
@v_trap = common dso_local global i32 0, align 4
@TSTATE_PRIV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"trap: curthread NULL\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"trap: curproc NULL\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_BRKPT = common dso_local global i32 0, align 4
@T_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"trap: bad trap type %#lx (user)\00", align 1
@trap_sig = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"trap: %s (user)\00", align 1
@debugger_on_signal = common dso_local global i64 0, align 8
@KDB_WHY_TRAPSIG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"trapsig\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"trap: kernel trap isn't\00", align 1
@kdb_active = common dso_local global i64 0, align 8
@MMU_SFSR_FV = common dso_local global i32 0, align 4
@ASI_AIUP = common dso_local global i32 0, align 4
@copy_nofault_begin = common dso_local global i32 0, align 4
@copy_nofault_end = common dso_local global i32 0, align 4
@copy_fault = common dso_local global i32 0, align 4
@fs_nofault_begin = common dso_local global i32 0, align 4
@fs_nofault_end = common dso_local global i32 0, align 4
@fs_fault = common dso_local global i32 0, align 4
@fas_nofault_begin = common dso_local global i32 0, align 4
@fas_nofault_end = common dso_local global i32 0, align 4
@impl = common dso_local global i32 0, align 4
@fas_fault = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"trap: bad trap type %#lx (kernel)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"trap: %s (kernel)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"trap: td=%p return\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trap(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %3, align 8
  %11 = load i32, i32* @KTR_TRAP, align 4
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = load i64*, i64** @trap_msg, align 8
  %14 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @T_KERNEL, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  %20 = getelementptr inbounds i64, i64* %13, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %23 = call i64 @TRAPF_USERMODE(%struct.trapframe* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* @pil, align 4
  %28 = call i32 @rdpr(i32 %27)
  %29 = call i32 @CTR4(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.thread* %12, i64 %21, i8* %26, i32 %28)
  %30 = load i32, i32* @v_trap, align 4
  %31 = call i32 @VM_CNT_INC(i32 %30)
  %32 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %33 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TSTATE_PRIV, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %195

38:                                               ; preds = %1
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = icmp ne %struct.thread* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.thread*, %struct.thread** %3, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 3
  %45 = load %struct.proc*, %struct.proc** %44, align 8
  %46 = icmp ne %struct.proc* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.thread*, %struct.thread** %3, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 3
  %51 = load %struct.proc*, %struct.proc** %50, align 8
  store %struct.proc* %51, %struct.proc** %4, align 8
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %55 = load %struct.thread*, %struct.thread** %3, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 1
  store %struct.trapframe* %54, %struct.trapframe** %56, align 8
  %57 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  %60 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load %struct.thread*, %struct.thread** %3, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.proc*, %struct.proc** %4, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %38
  %72 = load %struct.thread*, %struct.thread** %3, align 8
  %73 = call i32 @thread_cow_update(%struct.thread* %72)
  br label %74

74:                                               ; preds = %71, %38
  %75 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  switch i64 %77, label %105 [
    i64 137, label %78
    i64 136, label %78
    i64 133, label %82
    i64 135, label %89
    i64 134, label %93
    i64 129, label %97
    i64 140, label %100
    i64 141, label %102
  ]

78:                                               ; preds = %74, %74
  %79 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %80 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %8, align 8
  br label %82

82:                                               ; preds = %74, %78
  %83 = load %struct.thread*, %struct.thread** %3, align 8
  %84 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %85 = call i32 @trap_pfault(%struct.thread* %83, %struct.trapframe* %84, i32* %6, i32* %7)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %82
  br label %140

89:                                               ; preds = %74
  %90 = load %struct.thread*, %struct.thread** %3, align 8
  %91 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %92 = call i32 @rwindow_load(%struct.thread* %90, %struct.trapframe* %91, i32 2)
  store i32 %92, i32* %6, align 4
  br label %140

93:                                               ; preds = %74
  %94 = load %struct.thread*, %struct.thread** %3, align 8
  %95 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %96 = call i32 @rwindow_load(%struct.thread* %94, %struct.trapframe* %95, i32 1)
  store i32 %96, i32* %6, align 4
  br label %140

97:                                               ; preds = %74
  %98 = load %struct.thread*, %struct.thread** %3, align 8
  %99 = call i32 @rwindow_save(%struct.thread* %98)
  store i32 %99, i32* %6, align 4
  br label %140

100:                                              ; preds = %74
  %101 = call i32 (...) @trap_cecc()
  store i32 %101, i32* %6, align 4
  br label %140

102:                                              ; preds = %74
  %103 = load i32, i32* @SIGTRAP, align 4
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @TRAP_BRKPT, align 4
  store i32 %104, i32* %7, align 4
  br label %140

105:                                              ; preds = %74
  %106 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @T_MAX, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %114)
  br label %133

116:                                              ; preds = %105
  %117 = load i32*, i32** @trap_sig, align 8
  %118 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %119 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load i64*, i64** @trap_msg, align 8
  %126 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %127 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %124, %116
  br label %133

133:                                              ; preds = %132, %111
  %134 = load i32*, i32** @trap_sig, align 8
  %135 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %136 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %133, %102, %100, %97, %93, %89, %88
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %191

143:                                              ; preds = %140
  %144 = load %struct.proc*, %struct.proc** %4, align 8
  %145 = getelementptr inbounds %struct.proc, %struct.proc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32 (i32, i64)*, i32 (i32, i64)** %147, align 8
  %149 = icmp ne i32 (i32, i64)* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load %struct.proc*, %struct.proc** %4, align 8
  %152 = getelementptr inbounds %struct.proc, %struct.proc* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32 (i32, i64)*, i32 (i32, i64)** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %158 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 %155(i32 %156, i64 %159)
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %150, %143
  %162 = load i64, i64* @debugger_on_signal, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %168, 10
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %171, 11
  br i1 %172, label %173, label %176

173:                                              ; preds = %170, %167, %164
  %174 = load i32, i32* @KDB_WHY_TRAPSIG, align 4
  %175 = call i32 @kdb_enter(i32 %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %170, %161
  %177 = call i32 @ksiginfo_init_trap(%struct.TYPE_6__* %9)
  %178 = load i32, i32* %6, align 4
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %178, i32* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %180, i32* %181, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i8* %182, i8** %183, align 8
  %184 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %185 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %187, i32* %188, align 8
  %189 = load %struct.thread*, %struct.thread** %3, align 8
  %190 = call i32 @trapsignal(%struct.thread* %189, %struct.TYPE_6__* %9)
  br label %191

191:                                              ; preds = %176, %140
  %192 = load %struct.thread*, %struct.thread** %3, align 8
  %193 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %194 = call i32 @userret(%struct.thread* %192, %struct.trapframe* %193)
  br label %372

195:                                              ; preds = %1
  %196 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %197 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @T_KERNEL, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @KASSERT(i32 %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %204 = load i64, i64* @kdb_active, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %195
  %207 = call i32 (...) @kdb_reenter()
  br label %376

208:                                              ; preds = %195
  %209 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %210 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @T_KERNEL, align 8
  %213 = xor i64 %212, -1
  %214 = and i64 %211, %213
  switch i64 %214, label %342 [
    i64 141, label %215
    i64 132, label %215
    i64 137, label %225
    i64 136, label %225
    i64 133, label %225
    i64 138, label %232
    i64 131, label %232
    i64 139, label %306
    i64 140, label %340
  ]

215:                                              ; preds = %208, %208
  %216 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %217 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %220 = call i32 @kdb_trap(i64 %218, i32 0, %struct.trapframe* %219)
  %221 = icmp eq i32 %220, 0
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %5, align 4
  %223 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %224 = call i32 @TF_DONE(%struct.trapframe* %223)
  br label %343

225:                                              ; preds = %208, %208, %208
  %226 = load %struct.thread*, %struct.thread** %3, align 8
  %227 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %228 = call i32 @trap_pfault(%struct.thread* %226, %struct.trapframe* %227, i32* %6, i32* %7)
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %5, align 4
  br label %343

232:                                              ; preds = %208, %208
  %233 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %234 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @MMU_SFSR_FV, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %305

239:                                              ; preds = %232
  %240 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %241 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @MMU_SFSR_GET_ASI(i32 %242)
  %244 = load i32, i32* @ASI_AIUP, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %305

246:                                              ; preds = %239
  %247 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %248 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* @copy_nofault_begin, align 4
  %251 = sext i32 %250 to i64
  %252 = inttoptr i64 %251 to i8*
  %253 = icmp uge i8* %249, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %246
  %255 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %256 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* @copy_nofault_end, align 4
  %259 = sext i32 %258 to i64
  %260 = inttoptr i64 %259 to i8*
  %261 = icmp ule i8* %257, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %254
  %263 = load i32, i32* @copy_fault, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %267 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %266, i32 0, i32 2
  store i8* %265, i8** %267, align 8
  %268 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %269 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %268, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr i8, i8* %270, i64 4
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %274 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %273, i32 0, i32 5
  store i32 %272, i32* %274, align 4
  store i32 0, i32* %5, align 4
  br label %343

275:                                              ; preds = %254, %246
  %276 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %277 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* @fs_nofault_begin, align 4
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %282 = icmp uge i8* %278, %281
  br i1 %282, label %283, label %304

283:                                              ; preds = %275
  %284 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %285 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = load i32, i32* @fs_nofault_end, align 4
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = icmp ule i8* %286, %289
  br i1 %290, label %291, label %304

291:                                              ; preds = %283
  %292 = load i32, i32* @fs_fault, align 4
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i8*
  %295 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %296 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %295, i32 0, i32 2
  store i8* %294, i8** %296, align 8
  %297 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %298 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr i8, i8* %299, i64 4
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %303 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 4
  store i32 0, i32* %5, align 4
  br label %343

304:                                              ; preds = %283, %275
  br label %305

305:                                              ; preds = %304, %239, %232
  store i32 1, i32* %5, align 4
  br label %343

306:                                              ; preds = %208
  %307 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %308 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = load i32, i32* @fas_nofault_begin, align 4
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = icmp ugt i8* %309, %312
  br i1 %313, label %314, label %339

314:                                              ; preds = %306
  %315 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %316 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = load i32, i32* @fas_nofault_end, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to i8*
  %321 = icmp ult i8* %317, %320
  br i1 %321, label %322, label %339

322:                                              ; preds = %314
  %323 = call i32 (...) @cache_flush()
  %324 = load i32, i32* @impl, align 4
  %325 = call i32 @PCPU_GET(i32 %324)
  %326 = call i32 @cache_enable(i32 %325)
  %327 = load i32, i32* @fas_fault, align 4
  %328 = sext i32 %327 to i64
  %329 = inttoptr i64 %328 to i8*
  %330 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %331 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %330, i32 0, i32 2
  store i8* %329, i8** %331, align 8
  %332 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %333 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %332, i32 0, i32 2
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr i8, i8* %334, i64 4
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %338 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %337, i32 0, i32 5
  store i32 %336, i32* %338, align 4
  store i32 0, i32* %5, align 4
  br label %343

339:                                              ; preds = %314, %306
  store i32 1, i32* %5, align 4
  br label %343

340:                                              ; preds = %208
  %341 = call i32 (...) @trap_cecc()
  store i32 %341, i32* %5, align 4
  br label %343

342:                                              ; preds = %208
  store i32 1, i32* %5, align 4
  br label %343

343:                                              ; preds = %342, %340, %339, %322, %305, %291, %262, %225, %215
  %344 = load i32, i32* %5, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %371

346:                                              ; preds = %343
  %347 = load i64, i64* @T_KERNEL, align 8
  %348 = xor i64 %347, -1
  %349 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %350 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = and i64 %351, %348
  store i64 %352, i64* %350, align 8
  %353 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %354 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @T_MAX, align 8
  %357 = icmp ugt i64 %355, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %346
  %359 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %360 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %361)
  br label %363

363:                                              ; preds = %358, %346
  %364 = load i64*, i64** @trap_msg, align 8
  %365 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %366 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds i64, i64* %364, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %369)
  br label %371

371:                                              ; preds = %363, %343
  br label %372

372:                                              ; preds = %371, %191
  %373 = load i32, i32* @KTR_TRAP, align 4
  %374 = load %struct.thread*, %struct.thread** %3, align 8
  %375 = call i32 @CTR1(i32 %373, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), %struct.thread* %374)
  br label %376

376:                                              ; preds = %372, %206
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, %struct.thread*, i64, i8*, i32) #1

declare dso_local i64 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @rdpr(i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @thread_cow_update(%struct.thread*) #1

declare dso_local i32 @trap_pfault(%struct.thread*, %struct.trapframe*, i32*, i32*) #1

declare dso_local i32 @rwindow_load(%struct.thread*, %struct.trapframe*, i32) #1

declare dso_local i32 @rwindow_save(%struct.thread*) #1

declare dso_local i32 @trap_cecc(...) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @kdb_enter(i32, i8*) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_6__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_6__*) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

declare dso_local i32 @kdb_reenter(...) #1

declare dso_local i32 @kdb_trap(i64, i32, %struct.trapframe*) #1

declare dso_local i32 @TF_DONE(%struct.trapframe*) #1

declare dso_local i32 @MMU_SFSR_GET_ASI(i32) #1

declare dso_local i32 @cache_flush(...) #1

declare dso_local i32 @cache_enable(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
